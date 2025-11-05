import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session16_home_work_flutter/models/Quiz_model.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({super.key, required this.currentQuestion});

  final QuizModel currentQuestion;

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
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          SvgPicture.asset(currentQuestion.numberProgress),
          Text(
            currentQuestion.questionNumber,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
