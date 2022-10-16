import 'package:flutter/material.dart';
import 'View/description_page.dart';
import 'View/login_page.dart';
import 'View/sign_up_page.dart';

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
      home: DescriptionPage(),
    );
  }
}
