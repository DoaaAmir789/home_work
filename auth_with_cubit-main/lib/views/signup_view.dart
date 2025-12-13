import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/link.dart';
import 'package:auth_with_cubit/widgets/logo.dart';
import 'package:auth_with_cubit/widgets/view_signUp_form.dart';
import 'package:auth_with_cubit/widgets/view_subtitle.dart';
import 'package:auth_with_cubit/widgets/view_title.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.signUpBackgroundDecoration,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo/Icon
                  Logo(icon: Icons.person_add_outlined),
                  const SizedBox(height: 40),

                  // Welcome Text
                  ViewTitle(title: 'Create Account'),
                  const SizedBox(height: 8),
                  ViewSubTitle(description: 'Sign up to get started'),
                  const SizedBox(height: 40),

                  // Signup Form Card
                  ViewSignupForm(password: password, formKey: _formKey),
                  const SizedBox(height: 30),
                  // Login Link
                  Link(
                    question: "Already have an account? ",
                    buttonText: 'Login',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
