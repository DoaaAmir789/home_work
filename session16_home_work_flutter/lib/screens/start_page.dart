import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/widgets/custom_text.dart';
import 'package:session16_home_work_flutter/widgets/start_page_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.8,
              colors: [Color(0xff2B0063), Color(0xff14172D)],
              stops: [0.3, 1],
            ),
          ),
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 2),
              CustomText(
                text: 'Good morning,',
                textSize: 24,
                textColor: Colors.white,
              ),
              CustomText(
                text: 'New topic is waiting',
                textSize: 32,
                textWight: FontWeight.w500,
                textColor: Colors.white,
              ),
              Spacer(flex: 10),
              StartPageButton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
