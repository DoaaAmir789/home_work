import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final double buttonWidth;
  final Color color;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.child,
    required this.color,
    required this.onTap,
    required this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(buttonWidth, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      onPressed: onTap,
      child: child,
    );
  }
}
