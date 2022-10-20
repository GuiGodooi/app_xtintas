import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlignTxt extends StatelessWidget {
  final String text;

  const AlignTxt({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
