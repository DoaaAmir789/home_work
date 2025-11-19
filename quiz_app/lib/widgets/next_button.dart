import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.pageController,
    required this.pageCount,
  });
  final PageController pageController;
  final int pageCount;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonWidth: 100,
      color: Color(0xff8E84FF),
      onTap: () {
        if (pageController.page!.toInt() < pageCount - 1) {
          pageController.nextPage(
            duration: Duration(milliseconds: 600),
            curve: Curves.linear,
          );
        }
      },
      child: Row(
        spacing: 10,
        children: [
          Text('Next', style: AppTextStyles.medium16()),
          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
        ],
      ),
    );
  }
}
