/*
Q8. Digits Operations
- Ask the user for a number (e.g., 528).
- Print the sum of its digits and also print the largest digit.
*/
import 'dart:io';

void main() {
  print('Please enter number');
  int number = int.parse(stdin.readLineSync()!);

  int digit;
  int sum = 0;
  int maxNumber = 0;
  while (number > 0) {
    //to get the last digit
    digit = number % 10;
    if (maxNumber < digit) {
      maxNumber = digit;
    }
    sum += digit;
    //to remove the last digit
    number = number ~/ 10;
  }
  print('Sum : $sum');
  print('largest number :$maxNumber');
}
