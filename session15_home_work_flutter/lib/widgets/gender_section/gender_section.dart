import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/gender_section/gender_section_item.dart';

class GenderSection extends StatefulWidget {
  final ValueChanged<String> onGenderChanged;
  const GenderSection({super.key, required this.onGenderChanged});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  String selectedGender = 'Male';
  Color activeColor = const Color(0XFF090B24);
  Color inActiveColor = const Color(0XFF17172F);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = 'Male';
                widget.onGenderChanged(selectedGender);
              });
            },
            child: GenderSectionItem(
                data: 'MALE',
                icon: Icons.male,
                color: selectedGender == 'Male' ? activeColor : inActiveColor),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = 'Female';
                widget.onGenderChanged(selectedGender);
              });
            },
            child: GenderSectionItem(
                data: 'FEMALE',
                icon: Icons.female,
                color:
                    selectedGender == 'Female' ? activeColor : inActiveColor),
          ),
        ),
      ],
    );
  }
}
