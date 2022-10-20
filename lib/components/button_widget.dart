import 'package:app_xtintas/components/colors_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color colorBackground;
  final TextStyle styletxt =
      GoogleFonts.openSans(fontSize: 16, color: ColorsDS.purple);

  Button({
    Key? key,
    this.colorBackground = ColorsDS.white,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: colorBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 90),
        child: Text(text, style: styletxt),
      ),
    );
  }
}
