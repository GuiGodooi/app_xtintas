import 'package:app_xtintas/View/authentication/sign_up_page.dart';
import 'package:app_xtintas/View/home_page.dart';
import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:flutter/material.dart';

import 'View/authentication/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XTintas',
      home: HomePage(),
    );
  }
}
