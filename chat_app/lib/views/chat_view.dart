import 'package:chat_app/assets.dart';
import 'package:chat_app/models/chat_message_model.dart';
import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:chat_app/widgets/app_header.dart';
import 'package:chat_app/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<ChatMessageModel> messages = [
    ChatMessageModel(text: 'Hello chatGPT,how are you today?', sender: 'User'),
    ChatMessageModel(
      text: 'Hello, I\'m fine , how can i help you?',
      sender: 'Ai',
    ),
  ];
  String newMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_rounded),
        title: AppHeader(title: 'ChatGPT', status: 'Online'),
        actions: [
          SvgPicture.asset(Assets.volumeIcon),
          SvgPicture.asset(Assets.exportIcon),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Message(message: messages[index]);
              },
            ),
            TextField(
              onSubmitted: (value) {
                newMessage = value;
                messages.add(
                  ChatMessageModel(text: newMessage, sender: 'User'),
                );
                setState(() {});
              },
              style: AppTextStyles.bold(fontSize: 13, color: AppColors.primary),
              decoration: InputDecoration(
                hint: Text('Write your message'),
                fillColor: Colors.white,
                suffixIcon: SvgPicture.asset(Assets.sendIcon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
