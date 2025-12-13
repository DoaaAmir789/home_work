import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/link.dart';
import 'package:auth_with_cubit/widgets/logo.dart';
import 'package:auth_with_cubit/widgets/view_login_form.dart';
import 'package:auth_with_cubit/widgets/view_subtitle.dart';
import 'package:auth_with_cubit/widgets/view_title.dart';
import 'package:flutter/material.dart';

import 'signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.loginBackgroundDecoration,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo/Icon
                  Logo(icon: Icons.lock_outline),
                  const SizedBox(height: 40),
                  // Welcome Text
                  ViewTitle(title: 'Welcome Back'),
                  const SizedBox(height: 8),
                  ViewSubTitle(description: 'Sign in to continue'),
                  const SizedBox(height: 50),
                  // Login Form Card
                  ViewLoginForm(formKey: _formKey),
                  const SizedBox(height: 30),
                  // Sign Up Link
                  Link(
                    question: "Don't have an account? ",
                    buttonText: 'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupView(),
                        ),
                      );
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
