import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          color: Color(0xffE4F3FE),
        ),
        SizedBox(
          height: 20,
        ),
        Row(children: [
          Container(
            width: 30,
            height: 30,
            color: Color(0xffE0E0E0),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 30,
              color: Color(0xffE0E0E0),
            ),
          )
        ])
      ],
    );
  }
}
