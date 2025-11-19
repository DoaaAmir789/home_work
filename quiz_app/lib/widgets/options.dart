import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/selected_option.dart';
import 'package:quiz_app/widgets/unselected_option.dart';

class OptionItem extends StatelessWidget {
  final bool isSelected;
  final String option;
  const OptionItem({super.key, required this.isSelected, required this.option});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedOption(text: option)
        : UnselectedOption(text: option);
  }
}
