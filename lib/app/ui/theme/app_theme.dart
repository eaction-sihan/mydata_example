import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const fPrimaryColor = Color(0xFF5f0088);
const fSecondaryColor = Color(0xFF979797);
const fTextColor = Color(0xFF757575);

final ThemeData appThemeData = ThemeData(
  primaryColor: fPrimaryColor,
  splashColor: fSecondaryColor,
  highlightColor: fPrimaryColor,
  appBarTheme: AppBarTheme(
    color: fPrimaryColor,
  ),
  fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: fTextColor),
  ),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: fPrimaryColor),
);

TextTheme textTheme() {
  return TextTheme(
    headline1:
    GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold),
    headline2:
    GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold),
    subtitle1: GoogleFonts.nanumGothic(fontSize: 16.0),
    bodyText1: GoogleFonts.nanumGothic(fontSize: 15.0),
    bodyText2: GoogleFonts.nanumGothic(fontSize: 14.0),
  );
}

