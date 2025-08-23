/*
Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.
*/
void main() {
  List<Map<String, dynamic>> students = [
    {'Ahmed': 90.6},
    {'Ali': 85.7}
  ];

  print(students[1]['Ali']);

  num sumOfGrades = students[0]['Ahmed'] + students[1]['Ali'];

  print(sumOfGrades / 2);
}
