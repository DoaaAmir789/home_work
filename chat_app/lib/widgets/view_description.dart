import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ViewDescription extends StatelessWidget {
  final String description;
  const ViewDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.62,
      child: Text(
        description,
        style: AppTextStyles.medium(fontSize: 15, color: AppColors.grey),
        textAlign: TextAlign.center,
        maxLines: 3,
      ),
    );
  }
}
