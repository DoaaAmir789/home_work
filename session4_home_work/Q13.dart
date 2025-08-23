/*
Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
*/
void main() {
  int mark = 120;
  String grade = '';

  bool isA = mark >= 136 && mark <= 150;
  bool isB = mark >= 126 && mark <= 135;
  bool isC = mark >= 111 && mark <= 125;
  bool isD = mark >= 90 && mark <= 110;

  if (isA) {
    grade = 'A';
  } else if (isB) {
    grade = 'B';
  } else if (isC) {
    grade = 'C';
  } else if (isD) {
    grade = 'D';
  }

  switch (grade) {
    case 'A':
      print('You grade is $grade');
      break;
    case 'B':
      print('You grade is $grade');
      break;
    case 'C':
      print('You grade is $grade');
      break;
    case 'D':
      print('You grade is $grade');
      break;
    default:
      print('Invalid Grade');
  }
}
