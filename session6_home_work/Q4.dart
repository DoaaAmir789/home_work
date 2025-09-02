/*Q4
Create a program with a map of student names to their marks. Print the name of the student with
the highest mark.
*/
void main() {
  Map<String, num> studentsMarks = {
    'Heba': 85.9,
    'Sara': 87,
    'Eman': 90.5,
  };
  num highestMark = studentsMarks['Heba']!;
  studentsMarks.forEach((key, value) {
    if (highestMark < studentsMarks[key]!) {
      highestMark = studentsMarks[key]!;
    }
  });
  print(studentsMarks.keys
      .firstWhere((element) => studentsMarks[element] == highestMark));
}
