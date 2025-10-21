import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/increment_decrement_card.dart';

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
      IncrementDecrementCard(
          label: 'WEIGHT',
          value: weight,
          onMinus: () {
            setState(() {
              weight--;
            });
            widget.onWeightChanged(weight);
          },
          onPlus: () {
            setState(() {
              weight++;
            });
            widget.onWeightChanged(weight);
          }),
      const SizedBox(
        width: 20,
      ),
      IncrementDecrementCard(
          label: 'AGE',
          value: age,
          onMinus: () {
            setState(() {
              age--;
            });
            widget.onAgeChanged(age);
          },
          onPlus: () {
            setState(() {
              age++;
            });
            widget.onAgeChanged(age);
          })
    ]);
  }
}
