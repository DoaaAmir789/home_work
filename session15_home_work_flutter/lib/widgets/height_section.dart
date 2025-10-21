import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  final ValueChanged<int> onHeightChanged;
  const HeightSection({super.key, required this.onHeightChanged});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  int height = 174;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff15152F),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HEIGHT',
              style: TextStyle(
                color: Color(0xff777a8a),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 70,
                  ),
                ),
                const Text(
                  'cm',
                  style: TextStyle(
                    color: Color(0xff777a8a),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 15,
              max: 300,
              activeColor: Colors.pink,
              inactiveColor: Colors.grey,
              onChanged: (value) {
                setState(() {
                  height = value.toInt();
                  widget.onHeightChanged(height);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
