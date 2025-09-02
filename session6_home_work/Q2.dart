/*Q2
Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers.*/
void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  print('The average : ${averageInList(numbers)}');
}

num averageInList(List<int> numbers) {
  int sum = 0;
  for (int index = 0; index < numbers.length; index++) {
    sum += numbers[index];
  }
  double average = sum / numbers.length;
  return average;
}
