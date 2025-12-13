import 'package:chat_app/models/chat_message_model.dart';
import 'package:chat_app/widgets/bot_message_bubble.dart';
import 'package:chat_app/widgets/user_message_bubble.dart';
import 'package:flutter/widgets.dart';

class Message extends StatelessWidget {
  final ChatMessageModel message;
  const Message({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final String sender = message.sender;
    final String messageText = message.text;
    return sender == 'User'
        ? UserMessageBubble(text: messageText)
        : BotMessageBubble(text: messageText);
  }
}
