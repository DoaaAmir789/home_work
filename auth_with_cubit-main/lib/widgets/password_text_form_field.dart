import 'package:auth_with_cubit/widgets/custom_form_text_field.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final String labelText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Color focuseColor;
  const PasswordTextFormField({
    super.key,
    required this.labelText,
    required this.focuseColor,
    this.validator,
    this.onSaved,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormTextField(
      onSaved: widget.onSaved,
      obscureText: _obscurePassword,
      focuseColor: widget.focuseColor,
      labelText: widget.labelText,
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
      ),

      validator: widget.validator,
    );
  }
}
