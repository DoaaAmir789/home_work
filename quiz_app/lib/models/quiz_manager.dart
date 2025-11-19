import 'package:quiz_app/models/question_model.dart';

class QuizManager {
  final List<QuestionModel> _questions = getQuestions();

  List<QuestionModel> get questions => _questions;

  void updatedSelectedAnswer(QuestionModel question, String answer) {
    question.selectedAnswer = answer;
  }

  num calculateSelectedAnswers() {
    int correctAnswers = 0;
    for (var question in _questions) {
      if (question.selectedAnswer == question.correctAnswer) {
        correctAnswers++;
      }
    }
    return correctAnswers;
  }

  num calculateFinalScore() {
    return calculateSelectedAnswers() * 10;
  }
}

List<QuestionModel> getQuestions() {
  return [
    QuestionModel(
      questionImage: 'assets/Q1.svg',
      questionNumber: 'Question 1',
      title: 'What are Flutter widgets?',
      options: [
        'Building blocks of UI',
        'Programming language',
        'IDE for mobile apps',
        'Database system',
      ],
      correctAnswer: 'Building blocks of UI',
      //isMultipleAnswer: false,
    ),
    QuestionModel(
      questionImage: 'assets/Q2.svg',
      questionNumber: 'Question 2',
      title: 'Which of the following are programming languages?',
      options: ['Python', 'HTML', 'C++', 'CSS'],
      correctAnswer: 'C++',
      //isMultipleAnswer: true,
    ),
    QuestionModel(
      questionImage: 'assets/Q3.svg',
      questionNumber: 'Question 3',
      title: 'Which widget is used to arrange widgets vertically in Flutter?',
      options: ['Row', 'Column', 'Stack', 'ListView'],
      correctAnswer: 'Column',
      //isMultipleAnswer: false,
    ),

    QuestionModel(
      questionImage: 'assets/Q4.svg',
      questionNumber: 'Question 4',
      title:
          'Which of the following are state management approaches in Flutter?',
      options: ['Provider', 'setState()', 'BLoC', 'MaterialApp'],
      correctAnswer: 'Provider',
      //isMultipleAnswer: true,
    ),
  ];
}
