import 'package:flutter/material.dart';

class GreenBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(0xffE6F8E7),
          child: Column(
            children: [
              Container(
                width: 170,
                height: 42,
                color: Color(0XFFA5D6A7),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 170,
                height: 42,
                color: Color(0XFFA5D6A7),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
