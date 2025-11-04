import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onTap;

  const CalculateButton({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              backgroundColor: const Color(0xffEE0C54),
              minimumSize: const Size(150, 70)),
          onPressed: onTap,
          child: const Text(
            'CALCULATE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
