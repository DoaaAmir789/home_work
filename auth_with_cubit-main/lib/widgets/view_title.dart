import 'package:flutter/material.dart';

class ViewTitle extends StatelessWidget {
  final String title;
  const ViewTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    );
  }
}
