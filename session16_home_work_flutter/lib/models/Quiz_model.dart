class QuizModel {
  final String questionNumber;
  final String numberProgress;
  final String question;
  final List<String> options;

  QuizModel({
    required this.questionNumber,
    required this.numberProgress,
    required this.options,
    required this.question,
  });
}

List<QuizModel> questions = [
  QuizModel(
    questionNumber: 'Question 1',
    numberProgress: 'assets/Q1.svg',
    options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
  ),
  QuizModel(
    questionNumber: 'Question 2',
    numberProgress: 'assets/Q2.svg',
    options: [
      'Less than 5 hours',
      '5-7 hours',
      '7-9 hours',
      'More than 9 hours',
    ],

    question: 'How many hours of sleep do you usually get per night?',
  ),

  QuizModel(
    numberProgress: 'assets/Q3.svg',
    questionNumber: 'Question 3',
    options: ['Vitamin D3', 'Magnesium', 'Vitamin B', 'Zinc'],
    question: 'What vitamins do you take?',
  ),
  QuizModel(
    questionNumber: 'Question 4',
    numberProgress: 'assets/Q4.svg',
    options: ['Running', 'Yoga', 'Cycling', 'Swimming', 'Gym workouts'],
    question: 'Which physical activities do you enjoy?',
  ),
];
