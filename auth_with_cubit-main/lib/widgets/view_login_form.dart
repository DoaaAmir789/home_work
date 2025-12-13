import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/forget_password.dart';
import 'package:auth_with_cubit/widgets/view_button.dart';
import 'package:auth_with_cubit/widgets/view_password_field.dart';
import 'package:auth_with_cubit/widgets/view_text_field.dart';
import 'package:flutter/material.dart';

class ViewLoginForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  const ViewLoginForm({super.key, required GlobalKey<FormState> formKey})
    : _formKey = formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: AppDecoration.formBackgroundDecoration,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Email Field
            ViewTextField(
              textInputType: TextInputType.emailAddress,
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
              focuseColor: Color(0xFF667eea),
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
            const SizedBox(height: 20),
            // Password Field
            ViewPasswordField(
              labelText: 'Password',
              focuseColor: Color(0xFF667eea),
              prefixIcon: const Icon(Icons.lock_outline),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            // Forgot Password
            ForgetPassword(),
            const SizedBox(height: 24),
            // Login Button
            ViewButton(
              buttonText: 'Login',
              buttonColor: const Color(0xFF667eea),
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
