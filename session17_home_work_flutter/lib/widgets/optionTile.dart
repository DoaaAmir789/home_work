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
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: isSelected
                  ? [Color(0xffB8B2FF), Color(0xffC6C2F8)]
                  : [Colors.white, Colors.white],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            ),
            leading: Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: const Color(0xff2B0063),
            ),
            title: Text(
              text,
              style: TextStyle(color: const Color(0xff2B0063), fontSize: 23),
            ),
          ),
        ),
      ),
    );
  }
}
