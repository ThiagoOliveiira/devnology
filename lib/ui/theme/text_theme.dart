import 'package:flutter/material.dart';

class ThemeText {
  static const headline1 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Confortaa',
  );
  static const headline2 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static const headline3 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.normal,
  );
  static const headline4 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static const headline5 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontFamily: 'Confortaa',
  );
  static const headline6 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  static const bodyText2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle subtitle1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    fontFamily: 'Roboto',
    color: Colors.black,
  );
  static const caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static const overline = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    color: Colors.black,
  );
  static const button = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static TextTheme getDefaultTextTheme() => const TextTheme(
        headline1: ThemeText.headline1,
        headline2: ThemeText.headline2,
        headline3: ThemeText.headline3,
        headline4: ThemeText.headline4,
        headline5: ThemeText.headline5,
        headline6: ThemeText.headline6,
        bodyText2: ThemeText.bodyText2,
        bodyText1: ThemeText.bodyText1,
        subtitle1: ThemeText.subtitle1,
        caption: ThemeText.caption,
        overline: ThemeText.overline,
        button: ThemeText.button,
      );
}
