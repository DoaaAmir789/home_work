import 'package:flutter/material.dart';

class AppColorStyle {
  static Color maineViolet() {
    return Color(0xff2B0063);
  }

  static Color secondaryViolet() {
    return Color(0xff8E84FF);
  }

  static Color pastelViolet() {
    return Color(0xffB8B2FF);
  }

  static Color casperViolet() {
    return Color(0xff2B0063).withOpacity(0.3);
  }

  static Color backGrad() {
    return Color(0xffA838FF);
  }

  static LinearGradient maineBackground() {
    return LinearGradient(
      colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
