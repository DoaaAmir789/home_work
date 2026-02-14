import 'package:auth_with_cubit/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_with_cubit/cubits/auth_cubit/login_states.dart';
import 'package:auth_with_cubit/themes/app_decoration.dart';
import 'package:auth_with_cubit/widgets/view_footer.dart';
import 'package:auth_with_cubit/widgets/view_header.dart';
import 'package:auth_with_cubit/widgets/view_sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {
            if (state is AuthSuccessState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Signup Success')));
            } else if (state is AuthFailureState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AuthInitialState,
              child: Container(
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
                          ViewHeader(
                            icon: Icons.person_add_outlined,
                            title: 'Create Account',
                            description: 'Sign up to get started',
                          ),
                          const SizedBox(height: 40),

                          // Signup Form Card
                          ViewSignupForm(),
                          const SizedBox(height: 30),
                          // Login Link
                          ViewFooter(
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
          },
        ),
      ),
    );
  }
}
