import 'package:current/widgets/expanded_image_stack.dart';
import 'package:current/widgets/greeting_section.dart';
import 'package:current/widgets/start_screen_action_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Spacer(flex: 2),
                GreetingSection(),
                ExpandedImageStack(),
                Spacer(flex: 2),
                StartScreenActionButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
