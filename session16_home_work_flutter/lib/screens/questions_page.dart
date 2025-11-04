import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session16_home_work_flutter/widgets/custom_text.dart';
import 'package:session16_home_work_flutter/widgets/option_tile.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff14172D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                    SvgPicture.asset('assets/Q1.svg'),
                    Text(
                      'Question 1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              CustomText(
                text:
                    'How would you describe your level of satisfaction with the healthcare system?',
                textSize: 35,
                textColor: Colors.white,
              ),

              OptionTile(text: 'Satisfied'),
              OptionTile(text: 'Satisfied'),
              OptionTile(text: 'Satisfied'),
              OptionTile(text: 'Satisfied'),
            ],
          ),
        ),
      ),
    );
  }
}
