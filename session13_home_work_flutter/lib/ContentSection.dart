import 'package:flutter/widgets.dart';
import 'package:session13_home_work_flutter/CyanBlock.dart';
import 'package:session13_home_work_flutter/GrayBlock.dart';
import 'package:session13_home_work_flutter/GreenBlock.dart';
import 'package:session13_home_work_flutter/PinkBlock.dart';
import 'package:session13_home_work_flutter/YellowBlock.dart';

class ContentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GreenBlock(),
            const SizedBox(
              width: 12,
            ),
            YellowBlock(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        PinkBlock(),
        const SizedBox(
          height: 10,
        ),
        CyanBlock(),
        const SizedBox(
          height: 10,
        ),
        GrayBlock(),
      ],
    );
  }
}
