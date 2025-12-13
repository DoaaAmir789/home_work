import 'package:chat_app/assets.dart';
import 'package:flutter/material.dart';

class BotMessageBubble extends StatelessWidget {
  final String text;
  const BotMessageBubble({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Image.asset(Assets.botAvatar),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Center(child: Text(text)),
        ),
      ],
    );
  }
}
