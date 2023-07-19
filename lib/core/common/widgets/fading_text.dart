import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/res/colours.dart';

class FadingText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? colour;
  final TextAlign? textAlign;
  const FadingText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.colour,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.fade,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: colour ?? Colours.light,
      ),
    );
  }
}
