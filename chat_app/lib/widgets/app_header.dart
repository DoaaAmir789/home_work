import 'package:chat_app/assets.dart';
import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final String status;
  const AppHeader({super.key, required this.title, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Image.asset(Assets.botIcon),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.bold(color: AppColors.primary, fontSize: 20),
            ),
            Row(
              spacing: 3,
              children: [
                Icon(Icons.circle, size: 8, color: AppColors.green),
                Text(
                  'Online',
                  style: AppTextStyles.medium(
                    fontSize: 17,
                    color: AppColors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
