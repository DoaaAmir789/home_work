import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final Widget child;
  const CustomContainer({super.key, this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: color ?? const Color(0XFF17172F),
          borderRadius: BorderRadius.circular(10),
        ),
        child: child);
  }
}
