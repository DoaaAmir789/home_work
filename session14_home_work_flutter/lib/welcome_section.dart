import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff8160B9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Hello! 👋',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 5,
            ),
            const CustomText(
              text: 'Try your best to build this ui',
              fontSize: 14,
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xff673AB7),
                  minimumSize: Size(320, 42),
                  elevation: 5,
                ),
                onPressed: () {},
                child: const CustomText(
                  text: 'Get Started',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
