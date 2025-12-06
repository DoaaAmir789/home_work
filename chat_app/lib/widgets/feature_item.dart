import 'package:chat_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeatureItem extends StatelessWidget {
  final String featureDescription;
  final String featureImage;
  const FeatureItem({
    super.key,
    required this.featureDescription,
    required this.featureImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(featureImage),
        Text(featureDescription, style: AppTextStyles.bold14()),
      ],
    );
  }
}
