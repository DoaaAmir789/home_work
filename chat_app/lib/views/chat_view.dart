import 'package:chat_app/assets.dart';
import 'package:chat_app/theme/app_colors.dart';
import 'package:chat_app/theme/app_text_styles.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/feature_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_rounded),
        title: Row(
          spacing: 20,
          children: [
            SvgPicture.asset(Assets.botIcon),
            Column(
              children: [
                Text(
                  'ChatGPT',
                  style: AppTextStyles.bold(
                    color: AppColors.primary,
                    fontSize: 20,
                  ),
                ),
                Text('Online', style: AppTextStyles.medium17()),
              ],
            ),
          ],
        ),
        actions: [
          SvgPicture.asset(Assets.volumeIcon),
          SvgPicture.asset(Assets.exportIcon),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            FeatureItem(
              featureDescription: 'Explain',
              featureImage: Assets.explainIcon,
            ),
            ChatBubble(text: 'Explain Quantum physics'),
            ChatBubble(text: 'What are wormholes explain like i am 5'),
            FeatureItem(
              featureDescription: 'Write & edit',
              featureImage: Assets.editIcon,
            ),
            ChatBubble(text: 'Write a tweet about global warming'),
            ChatBubble(text: 'Write a poem about flower and love'),
            ChatBubble(text: 'Write a rap song lyrics about'),
            FeatureItem(
              featureDescription: 'Translate',
              featureImage: Assets.translatIcon,
            ),
            ChatBubble(text: 'Explain Quantum physics'),
            ChatBubble(text: 'What are wormholes explain like i am 5'),
            TextField(
              decoration: InputDecoration(
                hint: Text('Write your message'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
