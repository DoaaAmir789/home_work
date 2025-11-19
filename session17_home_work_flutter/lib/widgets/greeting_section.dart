import 'package:flutter/material.dart';
import 'package:session17_home_work_flutter/styles/app_text_styles.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      alignment: Alignment.centerLeft,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good morning,', style: AppTextStyles.h3()),
          Text('New topic is waiting', style: AppTextStyles.h1()),
        ],
      ),
    );
  }
}
