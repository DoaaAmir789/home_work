import 'package:flutter/material.dart';

abstract class AppDecoration {
  static BoxDecoration selectedAnswerBackgroundDecoration = BoxDecoration(
    gradient: buildSecondaryGradient(),
    borderRadius: BorderRadius.circular(12),
  );

  static BoxDecoration unSelectedAnswerBackgroundDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  static BoxDecoration mainBackgroundGradient = BoxDecoration(
    gradient: buildmainBackgroundGradient(),
  );
  static LinearGradient buildSecondaryGradient() => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xffB8B2FF), Color(0xFFC6C2F8)],
  );

  static LinearGradient buildmainBackgroundGradient() => LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xff060B26), Color(0xFF1A1F37)],
  );
}
