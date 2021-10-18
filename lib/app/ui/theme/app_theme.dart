import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.black,
  splashColor: Colors.purpleAccent,
  highlightColor: Colors.purple,
  appBarTheme: AppBarTheme(
    color: Colors.purple,
  ),
  fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: Colors.purpleAccent),
);
