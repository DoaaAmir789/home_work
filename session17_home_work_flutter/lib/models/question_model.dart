class QuestionModel {
  final String question;
  final String questionNumber;
  final String numberProgress;
  final List<String> options;
  final List<String> correctAnswer;
  final bool isMultipleAnswer;
  List<String> userAnswer;

  QuestionModel({
    required this.question,
    required this.questionNumber,
    required this.numberProgress,
    required this.correctAnswer,
    required this.options,
    required this.isMultipleAnswer,
  }) : userAnswer = [];
}
