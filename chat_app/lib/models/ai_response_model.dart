class AiResponseModel {
  final String userMessage;
  final String aiReply;
  const AiResponseModel({required this.userMessage, required this.aiReply});

  factory AiResponseModel.fromJson(Map<String, dynamic> json, String prompt) {
    return AiResponseModel(
      aiReply: json['candidates'][0]['content']['parts'][0]['text'],
      userMessage: prompt,
    );
  }
}
