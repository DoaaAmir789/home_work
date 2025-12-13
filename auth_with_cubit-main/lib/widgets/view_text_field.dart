import 'package:flutter/material.dart';

class ViewTextField extends StatelessWidget {
  final String labelText;
  final Icon prefixIcon;
  final TextInputType textInputType;
  final Color focuseColor;
  String? Function(String?) validator;
  ViewTextField({
    super.key,
    required this.focuseColor,
    required this.textInputType,
    required this.labelText,
    required this.prefixIcon,
    required this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: focuseColor, width: 2),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
      validator: validator,
    );
  }
}
