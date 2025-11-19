import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session17_home_work_flutter/models/question_manager.dart';
import 'package:session17_home_work_flutter/styles/app_text_styles.dart';

class QuestionTitle extends StatelessWidget {
  final QuestionManager manager;
  final int index;
  const QuestionTitle({super.key, required this.manager, required this.index});

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
        children: [
          SvgPicture.asset(manager.viewQuestion(index).numberProgress),
          Text(
            manager.viewQuestion(index).questionNumber,
            style: AppTextStyles.h4(),
          ),
        ],
      ),
    );
  }
}
