import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/reusable/custom_container.dart';
import 'package:session15_home_work_flutter/widgets/reusable/section_title.dart';

class GenderSectionItem extends StatelessWidget {
  final String data;
  final IconData icon;
  final Color? color;

  const GenderSectionItem({
    super.key,
    required this.data,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 110,
          ),
          SectionTitle(text: data),
        ],
      ),
    );
  }
}
