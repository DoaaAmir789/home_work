import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class StartScreenActionButton extends StatelessWidget {
  const StartScreenActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonWidth: MediaQuery.of(context).size.width,
      color: Colors.white,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuestionsScreen()),
        );
      },
      child: Text(
        'Start Quiz',
        style: AppTextStyles.medium18(color: AppColors.primary),
      ),
    );
  }
}
