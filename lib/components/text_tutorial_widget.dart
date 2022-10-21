import 'package:app_xtintas/components/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors_widget.dart';

class TextTutorial extends StatefulWidget {
  final double? width;
  final double? height;
  final String txtNum;
  final String txtTitle;
  final String txtSubTitle;
  final Widget? img;

  const TextTutorial({
    super.key,
    this.width,
    this.height,
    required this.txtNum,
    required this.txtTitle,
    required this.txtSubTitle,
    this.img,
  });

  @override
  State<TextTutorial> createState() => _TextTutorialState();
}

class _TextTutorialState extends State<TextTutorial> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.txtNum,
                style: GoogleFonts.openSans(
                  fontSize: 32,
                  color: ColorsDS.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBoxComponent.horizontalSpaceS28,
              Text(
                widget.txtTitle,
                style: GoogleFonts.openSans(
                    fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBoxComponent.horizontalSpaceS20,
              if (widget.img != null) widget.img!,
            ],
          ),
          SizedBoxComponent.verticalSpaceS12,
          Padding(
            padding: const EdgeInsets.only(left: 36),
            child: Text(
              widget.txtSubTitle,
              style: GoogleFonts.openSans(
                  fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
