import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/gender_section_item.dart';

class GenderSection extends StatefulWidget {
  final ValueChanged<String> onGenderChanged;
  const GenderSection({super.key, required this.onGenderChanged});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  String selectedGender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderSectionItem(
          onPress: () {
            setState(() {
              selectedGender = 'Male';
              widget.onGenderChanged(selectedGender);
            });
          },
          gender: 'MALE',
          icon: Icons.male,
          color:
              selectedGender == 'Male' ? Color(0xff060924) : Color(0xff15152F),
        ),
        const SizedBox(
          width: 20,
        ),
        GenderSectionItem(
          onPress: () {
            setState(() {
              selectedGender = 'Female';
              widget.onGenderChanged(selectedGender);
            });
          },
          gender: 'FEMALE',
          icon: Icons.female,
          color: selectedGender == 'Female'
              ? Color(0xff060924)
              : Color(0xff15152F),
        ),
      ],
    );
  }
}
