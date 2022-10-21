import 'dart:convert';

import 'package:app_xtintas/Model/add_to_cart.dart';
import 'package:app_xtintas/model/paint.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class AddToCartRepository with ChangeNotifier {
  Future<AddToCart> postCart(int quantity, paintProduct) async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/cart');

    var response = await http
        .post(url, body: {'quantity': quantity, 'paint': PaintProduct});
    if (response.statusCode == 201) {
      return AddToCart.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falhou ao enviar ao carrinho');
    }
  }
}
