import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color white = Colors.white;
Color black = Color(0xFF000000);
Color transparent = Colors.transparent;
Color customBlue = Color(0xFF1F1C3B);
Color customPink = Color(0xFFFE4992);
Color customSkyBlue = Color(0xFF00B0FC);
Color customOrange = Color(0xFFFC5B00);

FontWeight fw300 = FontWeight.w300;
FontWeight fw400 = FontWeight.w400;
FontWeight fw500 = FontWeight.w500;
FontWeight fw600 = FontWeight.w600;

nabeenFontStyle(double size, color, fontweight) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: fontweight);
}
