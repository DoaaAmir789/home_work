import 'package:flutter/material.dart';
import 'package:session16_home_work_flutter/screens/start_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StartPage());
  }
}
