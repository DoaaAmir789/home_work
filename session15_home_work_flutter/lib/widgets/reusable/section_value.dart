import 'package:flutter/material.dart';

class SectionValue extends StatelessWidget {
  const SectionValue({
    super.key,
    required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString(),
      style: const TextStyle(
        fontSize: 48,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
