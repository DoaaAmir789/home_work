import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/assets.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_decoration.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class SelectedOption extends StatelessWidget {
  final String text;
  const SelectedOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: AppDecoration.selectedAnswerBackgroundDecoration,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          leading: CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primary,
            child: SvgPicture.asset(Assets.checkIcon),
          ),
          title: Text(
            text,
            style: AppTextStyles.medium16(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
