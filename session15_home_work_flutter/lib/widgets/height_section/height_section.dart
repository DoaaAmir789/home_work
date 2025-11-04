import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/reusable/custom_container.dart';
import 'package:session15_home_work_flutter/widgets/reusable/section_title.dart';
import 'package:session15_home_work_flutter/widgets/reusable/section_value.dart';

class HeightSection extends StatefulWidget {
  final ValueChanged<int> onHeightChanged;
  const HeightSection({super.key, required this.onHeightChanged});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  int height = 174;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SectionTitle(text: 'HEIGHT'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              SectionValue(value: height),
              const Text(
                'cm',
                style: TextStyle(
                  color: Color(0xff777a8a),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SliderTheme(
            data: const SliderThemeData(
                trackHeight: 0.1,
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 15,
                )),
            child: Slider(
              min: 100,
              max: 220,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              thumbColor: const Color(0xFFEC0D54),
              value: height.toDouble(),
              onChanged: (value) {
                height = value.toInt();
                setState(() {});
                widget.onHeightChanged(height);
              },
            ),
          ),
        ],
      ),
    );
  }
}
