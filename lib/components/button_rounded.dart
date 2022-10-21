import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRounded extends StatelessWidget {
  final String? text;
  final VoidCallback press;
  final Color? background;
  final BorderRadius? radius;

  const ButtonRounded({
    Key? key,
    this.text,
    required this.press,
    this.background,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: background,
        shape: RoundedRectangleBorder(
          borderRadius: radius!,
        ),
      ),
      onPressed: press,
      child: Text(
        text!,
        style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
