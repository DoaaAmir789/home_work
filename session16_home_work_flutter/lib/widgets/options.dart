import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/models/Quiz_model.dart';
import 'package:session16_home_work_flutter/widgets/option_tile.dart';

class Options extends StatefulWidget {
  const Options({super.key, required this.question});
  final QuizModel question;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.question.options.length, (index) {
        String text = widget.question.options[index];
        return OptionTile(
          text: text,
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      }),
    );
  }
}