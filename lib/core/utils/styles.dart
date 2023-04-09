import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.notoSerif().fontFamily,
  );

  static TextStyle textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.notoSerif().fontFamily,
  );
  static TextStyle textStyle25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.notoSerif().fontFamily,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
