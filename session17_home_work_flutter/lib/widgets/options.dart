import 'package:flutter/material.dart';
import 'package:session17_home_work_flutter/models/question_manager.dart';
import 'package:session17_home_work_flutter/widgets/optionTile.dart';

class Options extends StatefulWidget {
  final QuestionManager manager;
  final int index;

  const Options({super.key, required this.manager, required this.index});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    var question = widget.manager.viewQuestion(widget.index);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(question.options.length, (index) {
          String optionText = question.options[index];
          bool isSelected = question.userAnswer.contains(optionText);

          return OptionTile(
            text: optionText,
            isSelected: isSelected,
            onTap: () {
              setState(() {
                if (question.isMultipleAnswer) {
                  widget.manager.selectMultipleAnswer(question, optionText);
                } else {
                  widget.manager.selectSingleAnswer(question, optionText);
                }
              });
            },
          );
        }),
      ),
    );
  }
}
