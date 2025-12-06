import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ViewTitle extends StatelessWidget {
  const ViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'You AI Assistant',
      style: AppTextStyles.bold(color: AppColors.primary, fontSize: 23),
    );
  }
}
