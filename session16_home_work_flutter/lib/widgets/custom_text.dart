import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textSize;
  final FontWeight textWight;
  final Color textColor;
  const CustomText({
    super.key,
    required this.text,
    required this.textSize,
    required this.textColor,
    this.textWight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        color: textColor,
        fontWeight: textWight,
      ),
    );
  }
}
