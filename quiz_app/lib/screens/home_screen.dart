import 'package:flutter/material.dart';
import 'package:quiz_app/assets.dart';
import 'package:quiz_app/theme/app_decoration.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/start_screen_action_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecoration.mainBackgroundGradient,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.gradient, fit: BoxFit.fitHeight),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    SizedBox(height: 30),
                    Text('Good morning,', style: AppTextStyles.regular16()),
                    Text(
                      'New Topic is waiting',
                      style: AppTextStyles.medium24(),
                    ),
                    Spacer(),
                    Image.asset(
                      Assets.homeImage,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Spacer(),
                    StartScreenActionButton(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
