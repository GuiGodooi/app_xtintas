import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Text(
          'XTintas',
          style: GoogleFonts.openSans(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
