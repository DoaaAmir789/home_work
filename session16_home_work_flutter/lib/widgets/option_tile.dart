import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const OptionTile({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          tileColor: isSelected ? const Color(0xffBAB4FE) : Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          leading: Icon(
            isSelected ? Icons.check_circle : Icons.circle_outlined,
            color: isSelected ? const Color(0xff2B0063) : Colors.black,
          ),
          title: Text(text),
          titleTextStyle: TextStyle(color: Color(0xff2B0063), fontSize: 23),
        ),
      ),
    );
  }
}
