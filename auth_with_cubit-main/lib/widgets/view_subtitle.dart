import 'package:flutter/material.dart';

class ViewSubTitle extends StatelessWidget {
  final String description;
  const ViewSubTitle({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white.withOpacity(0.9),
        letterSpacing: 0.5,
      ),
    );
  }
}
