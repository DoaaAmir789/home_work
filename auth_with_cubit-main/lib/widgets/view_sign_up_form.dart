import 'package:auth_with_cubit/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_with_cubit/themes/app_colors.dart';
import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/custom_form_text_field.dart';
import 'package:auth_with_cubit/widgets/password_text_form_field.dart';
import 'package:auth_with_cubit/widgets/view_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewSignupForm extends StatefulWidget {
  const ViewSignupForm({super.key});

  @override
  State<ViewSignupForm> createState() => _ViewSignupFormState();
}

class _ViewSignupFormState extends State<ViewSignupForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
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
            // Name Field
            CustomFormTextField(
              onSaved: (value) {
                name = value;
              },
              focuseColor: Color(0xFF11998e),
              keyboardType: TextInputType.name,
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
            CustomFormTextField(
              onSaved: (value) {
                email = value;
              },
              focuseColor: AppColors.secondary,
              keyboardType: TextInputType.emailAddress,
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
            PasswordTextFormField(
              onSaved: (value) {
                password = value;
              },
              labelText: 'Password',
              focuseColor: AppColors.secondary,
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
            const SizedBox(height: 16),
            // Confirm Password Field
            PasswordTextFormField(
              labelText: 'Confirm Password',
              focuseColor: AppColors.secondary,
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
              buttonColor: AppColors.secondary,
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
