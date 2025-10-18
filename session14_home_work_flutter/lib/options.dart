import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(text: 'Settings', color: Colors.blue),
        SizedBox(
          width: 10,
        ),
        CustomButton(text: 'Profile', color: Colors.orange)
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;

  const CustomButton({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 3,
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          )),
    );
  }
}
