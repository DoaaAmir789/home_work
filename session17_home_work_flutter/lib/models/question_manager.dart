import 'package:current/models/question_model.dart';

class QuestionManager {
  List<QuestionModel> questions = getQuestions();

  void selectedAnswer(QuestionModel question, List<String> answer) {
    question.userAnswer = answer;
  }

  void updateAnswers(QuestionModel question, String unselectAnswer) {
    question.userAnswer.remove(unselectAnswer);
  }

  List<QuestionModel> get viewAllQuestions => questions;

  QuestionModel viewQuestion(int index) {
    return questions[index];
  }
}

List<QuestionModel> getQuestions() {
  return [
    QuestionModel(
      numberProgress: 'assets/Q1.svg',
      questionNumber: 'Question 1',
      question: 'What are Flutter widgets?',
      options: [
        'Building blocks of UI',
        'Programming language',
        'IDE for mobile apps',
        'Database system',
      ],
      correctAnswer: ['Building blocks of UI'],
      isMultipleAnswer: false,
    ),
    QuestionModel(
      numberProgress: 'assets/Q2.svg',
      questionNumber: 'Question 2',
      question: 'Which of the following are programming languages?',
      options: ['Python', 'HTML', 'C++', 'CSS'],
      correctAnswer: ['Python', 'C++'],
      isMultipleAnswer: true,
    ),
    QuestionModel(
      numberProgress: 'assets/Q3.svg',
      questionNumber: 'Question 3',
      question:
          'Which widget is used to arrange widgets vertically in Flutter?',
      options: ['Row', 'Column', 'Stack', 'ListView'],
      correctAnswer: ['Column'],
      isMultipleAnswer: false,
    ),

    QuestionModel(
      numberProgress: 'assets/Q4.svg',
      questionNumber: 'Question 4',
      question:
          'Which of the following are state management approaches in Flutter?',
      options: ['Provider', 'setState()', 'BLoC', 'MaterialApp'],
      correctAnswer: ['Provider', 'setState()', 'BLoC'],
      isMultipleAnswer: true,
    ),
  ];
}
