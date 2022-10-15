import 'package:flutter/material.dart';

class WidgetLogo extends StatelessWidget {
  const WidgetLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/bucket-and-paint.png',
        ),
        const Text(
          'XTintas',
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
