import 'package:flutter/material.dart';

class ViewFooter extends StatelessWidget {
  final String question;
  final String buttonText;
  final VoidCallback onPressed;
  const ViewFooter({
    super.key,
    required this.buttonText,
    required this.question,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 15),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
