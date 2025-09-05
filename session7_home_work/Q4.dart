/*
Q4. Simple List Analyzer 
- Let the user enter 5 numbers into a list. 
- Print the largest and smallest numbers, and then calculate the difference between them.

*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Please enter five numbers in list : ');
  for (int i = 0; i < 5; i++) {
    int enteredNumber = int.parse(stdin.readLineSync().toString());
    numbers.add(enteredNumber);
  }
  print('List have five numbers : $numbers');

  numbers.sort();
  print('After sorting the list: $numbers');

  int minNumber = numbers.first;
  int maxNumber = numbers.last;
  print('Smallest number : $minNumber');
  print('Largest number : $maxNumber');
  int difference = maxNumber - minNumber;
  print('difference between smallest number and largest number : $difference');
}
