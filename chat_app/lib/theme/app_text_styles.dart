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

  // static TextStyle medium15({Color? color}) {
  //   return TextStyle(
  //     fontSize: 15,
  //     fontWeight: FontWeight.w500,
  //     color: color ?? Color(0xff757575),
  //   );
  // }

  // static TextStyle bold14({Color? color}) {
  //   return TextStyle(
  //     fontSize: 14,
  //     fontWeight: FontWeight.w700,
  //     color: color ?? Color(0xff3E3E3E),
  //   );
  // }

  // static TextStyle bold13({Color? color}) {
  //   return TextStyle(
  //     fontSize: 13,
  //     fontWeight: FontWeight.w700,
  //     color: color ?? Colors.white,
  //   );
  // }

  // static TextStyle medium17({Color? color}) {
  //   return TextStyle(
  //     fontSize: 17,
  //     fontWeight: FontWeight.w500,
  //     color: color ?? Color(0xff3ABF38),
  //   );
  // }

  // static TextStyle medium14({Color? color}) {
  //   return TextStyle(
  //     fontSize: 14,
  //     fontWeight: FontWeight.w500,
  //     color: color ?? Color(0xff3E3E3E),
  //   );
  // }
}
