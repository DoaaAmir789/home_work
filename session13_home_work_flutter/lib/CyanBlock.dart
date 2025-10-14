import 'package:flutter/material.dart';

class CyanBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 60,
            color: Color(0xffB2DFDC),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 60,
            color: Color(0xff80CBC4),
          ),
        ),
      ],
    );
  }
}
