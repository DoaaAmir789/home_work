import 'package:flutter/material.dart';

class IncrementDecrementCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;
  const IncrementDecrementCard(
      {super.key,
      required this.label,
      required this.value,
      required this.onMinus,
      required this.onPlus});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: const Color(0xff17172f),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Text(
                label,
                style: const TextStyle(
                    color: Color(0xff777a8a),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                value.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 60,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xff4b4e5f),
                    ),
                    onPressed: onMinus,
                    icon: const Icon(
                      Icons.remove,
                      color: Color(0XFFfffffd),
                    ),
                    iconSize: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xff4b4e5f),
                    ),
                    onPressed: onPlus,
                    icon: const Icon(
                      Icons.add,
                      color: Color(0XFFfffffd),
                    ),
                    iconSize: 45,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
