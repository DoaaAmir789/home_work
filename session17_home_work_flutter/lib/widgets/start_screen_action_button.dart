import 'package:flutter/material.dart';
import 'package:session17_home_work_flutter/screens/questions_screen.dart';
import 'package:session17_home_work_flutter/styles/app_text_styles.dart';
import 'package:session17_home_work_flutter/widgets/custom_button.dart';

class StartScreenActionButton extends StatelessWidget {
  const StartScreenActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      borderColor: Colors.white,
      buttonWidth: 350,
      color: Colors.white,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuestionsScreen()),
        );
      },
      child: Text('Start Quiz', style: AppTextStyles.h2()),
    );
  }
}
