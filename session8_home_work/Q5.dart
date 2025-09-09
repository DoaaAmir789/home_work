/*
Q5. Find Second Largest Number 
- Ask the user to enter 6 numbers in a list. 
- Print the largest number and the second largest number (without sorting the list).
*/
import 'dart:io';

void main() {
  List<int> enteredNumbers = [];

  print('enter 6 numbers : ');
  for (int i = 0; i < 6; i++) {
    int enteredValue = int.parse(stdin.readLineSync()!);
    enteredNumbers.add(enteredValue);
  }
  print('List : $enteredNumbers');

  int maxNumber = enteredNumbers[0];
  int secondMaxNumber = enteredNumbers[0];

  for (int i = 0; i < enteredNumbers.length; i++) {
    if (maxNumber < enteredNumbers[i]) {
      secondMaxNumber = maxNumber;
      maxNumber = enteredNumbers[i];
    } else if (enteredNumbers[i] > secondMaxNumber &&
        enteredNumbers[i] < maxNumber) {
      secondMaxNumber = enteredNumbers[i];
    }
  }
  print('Largest Number : $maxNumber');
  print('Second Largest Number : $secondMaxNumber');
}
