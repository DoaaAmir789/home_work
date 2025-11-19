import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/assets.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_decoration.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class UnselectedOption extends StatelessWidget {
  final String text;
  const UnselectedOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: AppDecoration.unSelectedAnswerBackgroundDecoration,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          leading: CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primary,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                Assets.checkIcon,
                colorFilter: ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
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
