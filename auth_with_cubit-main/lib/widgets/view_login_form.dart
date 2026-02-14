import 'package:auth_with_cubit/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_with_cubit/themes/app_colors.dart';
import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/custom_form_text_field.dart';
import 'package:auth_with_cubit/widgets/forget_password.dart';
import 'package:auth_with_cubit/widgets/password_text_form_field.dart';
import 'package:auth_with_cubit/widgets/view_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewLoginForm extends StatefulWidget {
  const ViewLoginForm({super.key});

  @override
  State<ViewLoginForm> createState() => _ViewLoginFormState();
}

class _ViewLoginFormState extends State<ViewLoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
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
            CustomFormTextField(
              onSaved: (value) {
                email = value;
              },
              keyboardType: TextInputType.emailAddress,
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
            PasswordTextFormField(
              onSaved: (value) {
                password = value;
              },
              labelText: 'Password',
              focuseColor: AppColors.primary,
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
              buttonColor: AppColors.primary,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  context.read<AuthCubit>().authentication(
                    email: email!,
                    password: password!,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
