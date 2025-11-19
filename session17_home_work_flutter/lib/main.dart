import 'package:flutter/material.dart';
import 'package:session17_home_work_flutter/screens/start_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StartScreen());
  }
}
