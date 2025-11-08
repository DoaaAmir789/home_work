import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/screens/questions_page.dart';
import 'package:session16_home_work_flutter/styles/app_text_style.dart';
import 'package:session16_home_work_flutter/widgets/custom_button.dart';

class StartScreenButton extends StatelessWidget {
  const StartScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonWidth: 350,
      color: Colors.white,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuestionsPage()),
        );
      },
      child: Text('Start Quiz', style: AppTextStyle.h2()),
    );
  }
}
