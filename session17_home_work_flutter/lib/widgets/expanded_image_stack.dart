import 'package:flutter/material.dart';

class ExpandedImageStack extends StatelessWidget {
  const ExpandedImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Stack(
        children: [
          Image.asset(
            'assets/GRADINET.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: Image.asset('assets/home_image.png', fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
