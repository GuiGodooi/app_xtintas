import 'dart:convert';
import 'package:app_xtintas/model/add_to_cart.dart';
import 'package:http/http.dart' as http;

class PaintOptionsRepository {
  Future<Paint> getPaintOptions() async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/paints');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Paint.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falhou ao carregasr as tintas');
    }
  }
}
