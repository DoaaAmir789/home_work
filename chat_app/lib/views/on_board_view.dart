import 'package:chat_app/assets.dart';
import 'package:chat_app/widgets/continue_button.dart';
import 'package:chat_app/widgets/view_description.dart';
import 'package:chat_app/widgets/view_title.dart';
import 'package:flutter/material.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 60),
                ViewTitle(),
                SizedBox(height: 20),
                ViewDescription(),
                Expanded(
                  child: Image.asset(
                    Assets.onBoardImage,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
                ContinueButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
