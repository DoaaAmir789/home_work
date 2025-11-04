import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/screens/questions_page.dart';
import 'package:session16_home_work_flutter/widgets/custom_text.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff14172D),
      body: SafeArea(
        child: Center(
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
                textWight: FontWeight.bold,
                textColor: Colors.white,
              ),
              Spacer(flex: 15),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionsPage()),
                  );
                },
                child: Text(
                  'Start Quiz',
                  style: TextStyle(color: Color(0xff2B0063), fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
