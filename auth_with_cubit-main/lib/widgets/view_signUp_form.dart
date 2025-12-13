import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/view_button.dart';
import 'package:auth_with_cubit/widgets/view_password_field.dart';
import 'package:auth_with_cubit/widgets/view_text_field.dart';
import 'package:flutter/material.dart';

class ViewSignupForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  String password;
  ViewSignupForm({
    super.key,
    required this.password,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: AppDecoration.formBackgroundDecoration,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Name Field
            ViewTextField(
              focuseColor: Color(0xFF11998e),
              textInputType: TextInputType.name,
              labelText: 'Full Name',
              prefixIcon: const Icon(Icons.person_outline),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            // Email Field
            ViewTextField(
              focuseColor: Color(0xFF11998e),
              textInputType: TextInputType.emailAddress,
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            // Password Field
            ViewPasswordField(
              labelText: 'Password',
              focuseColor: Color(0xFF11998e),
              prefixIcon: const Icon(Icons.lock_outline),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                password = value;
                return null;
              },
            ),
            const SizedBox(height: 16),
            // Confirm Password Field
            ViewPasswordField(
              labelText: 'Confirm Password',
              focuseColor: Color(0xFF11998e),
              prefixIcon: const Icon(Icons.lock_outline),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please confirm your password';
                }
                if (value != password) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            // Signup Button
            ViewButton(
              buttonText: 'Sign Up',
              buttonColor: const Color(0xFF11998e),
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
