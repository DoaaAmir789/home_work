import 'package:flutter/material.dart';

class PinkBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF3E6F5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85,
            height: 85,
            color: Color(0xffE1BEE8),
          ),
          Container(
            color: Color(0xffE1BEE8),
            child: Column(
              children: [
                Container(
                  width: 85,
                  height: 36,
                  color: Color(0xffCF93D9),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 85,
                  height: 36,
                  color: Color(0xffCF93D9),
                )
              ],
            ),
          ),
          Container(
            width: 80,
            height: 85,
            color: Color(0xffE1BEE8),
          ),
          Container(
            width: 80,
            height: 85,
            color: Color(0xffF3E6F5),
          )
        ],
      ),
    );
  }
}
