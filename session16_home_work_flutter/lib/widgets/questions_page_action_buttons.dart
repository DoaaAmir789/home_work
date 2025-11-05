import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/widgets/custom_button.dart';
import 'package:session16_home_work_flutter/widgets/custom_text.dart';

class QuestionsPageActionButtons extends StatelessWidget {
  final VoidCallback next;
  final VoidCallback back;
  const QuestionsPageActionButtons({
    super.key,
    required this.next,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          buttonWidth: 100,
          color: Colors.transparent,
          onTap: back,
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.white),
              CustomText(text: 'Back', textSize: 25, textColor: Colors.white),
            ],
          ),
        ),
        Spacer(flex: 1),
        CustomButton(
          buttonWidth: 100,
          color: Color(0xff8E84FF),
          onTap: next,
          child: Row(
            children: [
              CustomText(text: 'Next', textSize: 25, textColor: Colors.white),
              Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
