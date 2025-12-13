import 'package:flutter/material.dart';

class ViewPasswordField extends StatefulWidget {
  final String labelText;
  final Icon prefixIcon;
  final String? Function(String?) validator;
  final Color focuseColor;
  bool obscurePassword;
  ViewPasswordField({
    super.key,
    required this.labelText,
    required this.focuseColor,
    required this.prefixIcon,
    this.obscurePassword = true,
    required this.validator,
  });

  @override
  State<ViewPasswordField> createState() => _ViewPasswordFieldState();
}

class _ViewPasswordFieldState extends State<ViewPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscurePassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
          icon: Icon(
            widget.obscurePassword
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
          ),
          onPressed: () {
            setState(() {
              widget.obscurePassword = !widget.obscurePassword;
            });
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: widget.focuseColor, width: 2),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
      validator: widget.validator,
    );
  }
}
