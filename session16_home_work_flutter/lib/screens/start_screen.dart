import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/styles/app_color_style.dart';
import 'package:session16_home_work_flutter/widgets/start_screen_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColorStyle.maineBackground()),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/GRADINET.png',
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      child: Image.asset(
                        'assets/home_image.png',
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              StartScreenButton(),
            ],
          ),
        ),
      ),
    );
  }
}
