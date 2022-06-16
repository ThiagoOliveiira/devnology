import 'package:devnology/ui/theme/text_theme.dart';
import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final textTheme = ThemeText.getDefaultTextTheme();

  return ThemeData(
    textTheme: textTheme,
    primaryColor: const Color(0xff2E3746),
    fontFamily: 'Roboto',
    backgroundColor: const Color(0xff2E3746),
  );
}
