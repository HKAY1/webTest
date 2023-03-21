import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle style(
    double fontSize,
    FontWeight fontWeight,
    Color color, {
    double? height,
    TextDecoration? textDecoration,
  }) {
    return GoogleFonts.poppins(
      decoration: textDecoration ?? TextDecoration.none,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
    );
  }
}
