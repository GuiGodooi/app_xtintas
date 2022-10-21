import 'dart:convert';

import 'package:http/http.dart' as http;

import '../paint.dart';

class PaintRepository {
  Future<PaintProduct> getPaintOptions() async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/paints');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return PaintProduct.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falhou ao carregasr as tintas');
    }
  }
}
