/*
Q7 Ask the user for a number (e.g., 9875). 
Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 ® 2+9 = 11 ® 1+1 = 2)
*/
import 'dart:io';

void main() {
  print('Enter number : ');
  int inputNumber = 9875;
  int currentSum = inputNumber;

  while (currentSum >= 10) {
    currentSum = 0;
    while (inputNumber > 0) {
      currentSum += inputNumber % 10;
      inputNumber ~/= 10;
    }
    inputNumber = currentSum;
  }
  print('final Single-digit result : $inputNumber');
}
