import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/quiz_manager.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/options_list.dart';
import 'package:quiz_app/widgets/question_header.dart';

class QuestionItem extends StatelessWidget {
  final QuestionModel question;
  final QuizManager manager;
  const QuestionItem({
    super.key,
    required this.question,
    required this.manager,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(question: question),
        SizedBox(height: 16),
        Text(question.title, style: AppTextStyles.medium24()),
        SizedBox(height: 32),
        OptionsList(question: question, manager: manager),
      ],
    );
  }
}
