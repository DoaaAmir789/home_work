import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle bold({Color? color, required double fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: color ?? Colors.white,
    );
  }

  static TextStyle medium({Color? color, required double fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
    );
  }

  static TextStyle regular({Color? color, required double fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: color ?? Colors.white,
    );
  }
}
