/*
Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
*/
void main() {
  List<int>? numbers = [50, 40];

  bool isListNull = numbers == null;
  bool isListEmpty = numbers?.isEmpty ?? true;
  bool isListNullOrEmpty = isListNull || isListEmpty;

  int sumOfFirstAndLast = 0;
  bool check;
  if (isListNullOrEmpty) {
    print('No scores');
  } else {
    sumOfFirstAndLast = numbers[0] + numbers[numbers.length - 1];
    print('sum of the first and last :$sumOfFirstAndLast');
    check = sumOfFirstAndLast >= 40;
    print(
        'Is first and last elements are greater than or equal to 40 : $check');
  }
}
