import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StatsSectionItem(
          icon: Icons.people,
          color: Color(0xff673AB7),
          value: '1,234',
          text: 'Users',
        ),
        StatsSectionItem(
          icon: Icons.star,
          color: Colors.orange,
          value: '4.8',
          text: 'Rating',
        ),
        StatsSectionItem(
          icon: Icons.trending_up,
          color: Colors.blue,
          value: '98%',
          text: 'Success',
        ),
      ],
    );
  }
}

class StatsSectionItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String text;
  final Color color;
  const StatsSectionItem(
      {required this.icon,
      required this.text,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Text(text,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 12,
                )),
          ],
        ),
      ),
    );
  }
}
