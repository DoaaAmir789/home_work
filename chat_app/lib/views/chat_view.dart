import 'dart:async';

import 'package:chat_app/assets.dart';
import 'package:chat_app/models/ai_response_model.dart';
import 'package:chat_app/models/chat_message_model.dart';
import 'package:chat_app/service/chat_api_service.dart';
import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:chat_app/widgets/message.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late StreamController<AiResponseModel> _streamController;
  late Stream<AiResponseModel> _stream;
  List<ChatMessageModel> currentMessages = [];
  final _controller = TextEditingController();
  String userMessage = '';

  @override
  void initState() {
    _streamController = StreamController<AiResponseModel>();
    _stream = _streamController.stream;
    super.initState();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                StreamBuilder<AiResponseModel>(
                  stream: _stream,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Message(
                        message: ChatMessageModel(
                          text: 'Typing ...',
                          sender: 'AI',
                        ),
                      );
                    }
                    if (snapshot.hasError) {
                      return Message(
                        message: ChatMessageModel(
                          text: 'Error occurred',
                          sender: 'AI',
                        ),
                      );
                    }
                    return Message(
                      message: ChatMessageModel(
                        text: snapshot.data!.aiReply,
                        sender: 'AI',
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              controller: _controller,
              onSubmitted: (value) async {
                userMessage = value.trim();
                if (value.trim().isEmpty) return;
                currentMessages.add(
                  ChatMessageModel(text: userMessage, sender: 'User'),
                );
                final data = await ChatApiService(
                  dio: Dio(),
                ).generateTextResponse(prompt: userMessage);
                _streamController.add(data);
                setState(() {});
                _controller.clear();
              },
              style: AppTextStyles.bold(fontSize: 13, color: AppColors.primary),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                hint: Text('Write your message'),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      SvgPicture.asset(Assets.microphoneIcon),
                      SvgPicture.asset(Assets.sendIcon),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
