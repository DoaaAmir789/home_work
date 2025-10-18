import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FeatureSectionItem(
          title: 'Fast Performance',
          description: 'Lightning fast app performance',
          icon: Icons.speed,
          color: Color(0xff673AB7),
        ),
        FeatureSectionItem(
          title: 'Secure',
          description: 'Your data is safe with us',
          icon: Icons.security,
          color: Colors.blue,
        ),
        FeatureSectionItem(
          title: 'Beautiful UI',
          description: 'Modern and clean design',
          icon: Icons.color_lens,
          color: Colors.orange,
        )
      ],
    );
  }
}

class FeatureSectionItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String description;
  const FeatureSectionItem(
      {required this.title,
      required this.icon,
      required this.color,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: color.withAlpha(50),
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.grey[400]),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
