import 'package:flutter/material.dart';

class YellowBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFF3DD),
      child: Row(
        children: [
          Container(
            width: 85,
            height: 95,
            color: Color(0xffFFCC80),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 85,
            height: 95,
            color: Color(0xffFFCC80),
          )
        ],
      ),
    );
  }
}
