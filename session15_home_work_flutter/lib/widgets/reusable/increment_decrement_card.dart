import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/widgets/reusable/custom_container.dart';
import 'package:session15_home_work_flutter/widgets/reusable/section_title.dart';
import 'package:session15_home_work_flutter/widgets/reusable/section_value.dart';

class IncrementDecrementCard extends StatefulWidget {
  final String text;
  final int defaultValue;
  final Function(int) onChanged;
  const IncrementDecrementCard({
    super.key,
    required this.text,
    required this.defaultValue,
    required this.onChanged,
  });

  @override
  State<IncrementDecrementCard> createState() => _IncrementDecrementCardState();
}

class _IncrementDecrementCardState extends State<IncrementDecrementCard> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      value = widget.defaultValue;
    }
    return CustomContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionTitle(text: widget.text),
          SectionValue(value: value),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff4B4E5F),
                ),
                onPressed: () {
                  value--;
                  widget.onChanged(value);
                  setState(() {});
                },
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 38,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff4B4E5F),
                ),
                onPressed: () {
                  value++;
                  widget.onChanged(value);
                  setState(() {});
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 38,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
