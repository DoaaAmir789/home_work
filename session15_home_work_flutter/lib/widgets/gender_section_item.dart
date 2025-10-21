import 'package:flutter/material.dart';

class GenderSectionItem extends StatelessWidget {
  final String gender;
  final IconData icon;
  final Color color;
  final VoidCallback onPress;
  const GenderSectionItem(
      {super.key,
      required this.gender,
      required this.icon,
      required this.color,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Card(
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(children: [
              Icon(
                icon,
                color: Colors.white,
                size: 120,
              ),
              Text(
                gender,
                style: const TextStyle(
                  color: Color(0xff777a8a),
                  fontSize: 20,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
