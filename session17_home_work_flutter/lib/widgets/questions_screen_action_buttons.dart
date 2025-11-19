import 'package:flutter/material.dart';
import 'package:session17_home_work_flutter/styles/app_text_styles.dart';
import 'package:session17_home_work_flutter/widgets/custom_button.dart';

class QuestionsPageActionButtons extends StatelessWidget {
  final VoidCallback next;
  final VoidCallback back;
  const QuestionsPageActionButtons({
    super.key,
    required this.next,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          borderColor: Color(0xff8E84FF),
          buttonWidth: 100,
          color: Colors.transparent,
          onTap: back,
          child: Row(
            spacing: 10,
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.white),
              Text('Back', style: AppTextStyles.h3()),
            ],
          ),
        ),
        Spacer(flex: 1),
        CustomButton(
          borderColor: Color(0xff8E84FF),
          buttonWidth: 100,
          color: Color(0xff8E84FF),
          onTap: next,
          child: Row(
            spacing: 10,
            children: [
              Text('Next', style: AppTextStyles.h3()),
              Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
