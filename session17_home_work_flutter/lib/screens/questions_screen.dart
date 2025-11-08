import 'package:flutter/material.dart';
import 'package:session17_home_work_flutter/models/question_manager.dart';
import 'package:session17_home_work_flutter/styles/app_text_styles.dart';
import 'package:session17_home_work_flutter/widgets/options.dart';
import 'package:session17_home_work_flutter/widgets/question_tilte.dart';
import 'package:session17_home_work_flutter/widgets/questions_screen_action_buttons.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;
  QuestionManager manager = QuestionManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (index) {
                    currentPage = index;
                    setState(() {});
                  },
                  itemCount: manager.viewAllQuestions.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        QuestionTitle(manager: manager, index: index),
                        Text(
                          manager.viewQuestion(index).question,
                          style: AppTextStyles.h1(),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/GRADINET.png',
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              Options(manager: manager, index: index),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: QuestionsPageActionButtons(
                  next: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  back: () {
                    _controller.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
