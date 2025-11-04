import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String text;
  const OptionTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      leading: Icon(Icons.circle_outlined),
      title: Text(text),
      titleTextStyle: TextStyle(color: Color(0xff2B0063), fontSize: 23),
    );
  }
}
