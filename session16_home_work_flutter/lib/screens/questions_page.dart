import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/models/Quiz_model.dart';
import 'package:session16_home_work_flutter/widgets/custom_text.dart';
import 'package:session16_home_work_flutter/widgets/options.dart';
import 'package:session16_home_work_flutter/widgets/question_title.dart';
import 'package:session16_home_work_flutter/widgets/questions_page_action_buttons.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    QuizModel currentQuestion = questions[index];
    return Scaffold(
      backgroundColor: Color(0xff14172D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              QuestionTitle(currentQuestion: currentQuestion),
              CustomText(
                text: currentQuestion.question,
                textSize: 35,
                textColor: Colors.white,
              ),
              Spacer(flex: 1),
              Options(options: currentQuestion.options),
              Spacer(flex: 2),
              QuestionsPageActionButtons(
                next: () {
                  if (index != questions.length - 1) index++;
                  setState(() {});
                },
                back: () {
                  if (index > 0) index--;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
