import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/reusable/increment_decrement_card.dart';

class WeightAndAgeSection extends StatefulWidget {
  final ValueChanged<int> onWeightChanged;
  final ValueChanged<int> onAgeChanged;
  const WeightAndAgeSection(
      {super.key, required this.onWeightChanged, required this.onAgeChanged});

  @override
  State<WeightAndAgeSection> createState() => _WeightAndAgeSectionState();
}

class _WeightAndAgeSectionState extends State<WeightAndAgeSection> {
  int weight = 60;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: IncrementDecrementCard(
          text: 'WEIGHT',
          defaultValue: weight,
          onChanged: (int value) {
            weight = value;
            setState(() {
              widget.onWeightChanged(value);
            });
          },
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Expanded(
        child: IncrementDecrementCard(
          onChanged: (int value) {
            age = value;
            setState(() {
              widget.onAgeChanged(value);
            });
          },
          text: 'AGE',
          defaultValue: age,
        ),
      )
    ]);
  }
}
