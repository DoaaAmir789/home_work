import 'package:auth_with_cubit/widgets/logo.dart';
import 'package:auth_with_cubit/widgets/view_subtitle.dart';
import 'package:auth_with_cubit/widgets/view_title.dart';
import 'package:flutter/material.dart';

class ViewHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const ViewHeader({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Logo(icon: icon),
        const SizedBox(height: 40),
        // Welcome Text
        ViewTitle(title: title),
        const SizedBox(height: 8),
        ViewSubTitle(description: description),
      ],
    );
  }
}
