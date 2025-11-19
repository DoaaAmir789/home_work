class QuestionModel {
  final String title;
  final String questionNumber;
  final List<String> options;
  final String questionImage;
  final String correctAnswer;
  String selectedAnswer = '';
  QuestionModel({
    required this.title,
    required this.questionNumber,
    required this.options,
    required this.questionImage,
    required this.correctAnswer
  });
}
