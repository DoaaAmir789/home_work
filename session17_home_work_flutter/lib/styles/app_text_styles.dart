import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle h1() {
    return const TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0,
    );
  }

  static TextStyle h2() {
    return const TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Color(0xff2B0063),
      letterSpacing: 0,
    );
  }

  static TextStyle h3() {
    return const TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 0,
    );
  }

  static TextStyle h4() {
    return const TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 0,
    );
  }
}
