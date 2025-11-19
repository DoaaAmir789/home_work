import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class QuestionHeader extends StatelessWidget {
  final QuestionModel question;
  const QuestionHeader({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff8E84FF),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 2, color: Color(0xffB8B2FF)),
      ),
      child: Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(question.questionImage),
          Text(question.questionNumber, style: AppTextStyles.regular12()),
        ],
      ),
    );
  }
}
