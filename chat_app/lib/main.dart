import 'package:chat_app/views/on_board_view.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: OnBoardView(),
    );
  }
}
