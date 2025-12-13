class ChatMessageModel {
  final String text;
  final String sender;
  final String? senderImage;

  ChatMessageModel({
    required this.text,
    required this.sender,
    this.senderImage,
  });
}
