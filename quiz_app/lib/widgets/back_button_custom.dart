import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      color: Colors.transparent,
      onTap: () {
        pageController.previousPage(
          duration: Duration(milliseconds: 600),
          curve: Curves.linear,
        );
      },
      buttonWidth: MediaQuery.of(context).size.width * 0.15,
      child: Row(
        spacing: 10,
        children: [
          Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
          Text('Back', style: AppTextStyles.medium16()),
        ],
      ),
    );
  }
}
