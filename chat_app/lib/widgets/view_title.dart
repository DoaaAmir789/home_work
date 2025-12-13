import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ViewTitle extends StatelessWidget {
  final String text;
  const ViewTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.bold(color: AppColors.primary, fontSize: 23),
    );
  }
}
