import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/quiz_manager.dart';
import 'package:quiz_app/widgets/options.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({super.key, required this.question, required this.manager});
  final QuestionModel question;
  final QuizManager manager;
  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.question.options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              String selectedAnswer = widget.question.options[index];
              widget.manager.updatedSelectedAnswer(
                widget.question,
                selectedAnswer,
              );
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: OptionItem(
                isSelected: selectedIndex == index,
                option: widget.question.options[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
