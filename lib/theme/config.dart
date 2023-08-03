import 'package:flutter/material.dart';

class ThemeConfig {
  static String fontFamily = 'Prompt';

  static TextTheme textTheme = const TextTheme(
    bodyLarge: TextStyle(fontSize: 18.0),
    bodyMedium: TextStyle(fontSize: 16.0),
    titleLarge: TextStyle(fontSize: 36),
  );
}

class Grocery {
  static get primary => const Color(0xffF9B07B);
  static get secondary => const Color(0xffFCD9C0);
  static get accent => const Color(0xffe5660b);
  static get titleColor => const Color(0xff954040);
  static get background => const Color(0xffEFEFEE);
  static get miniCard => const Color(0xffFBEBE1);
}
