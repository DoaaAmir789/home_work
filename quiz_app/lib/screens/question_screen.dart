import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_manager.dart';
import 'package:quiz_app/theme/app_decoration.dart';
import 'package:quiz_app/widgets/back_button_custom.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final QuizManager manager = QuizManager();
  PageController pageController = PageController();
  int pageIndex = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecoration.mainBackgroundGradient,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    pageIndex = index;
                    setState(() {});
                  },
                  controller: pageController,
                  itemCount: manager.questions.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: QuestionItem(
                        question: manager.questions[index],
                        manager: manager,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Visibility(
                      visible: pageIndex != 0,
                      child: BackButtonCustom(pageController: pageController),
                    ),
                    Spacer(),
                    NextButton(
                      pageCount: manager.questions.length,
                      pageController: pageController,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 55),
            ],
          ),
        ),
      ),
    );
  }
}
