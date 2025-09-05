/*
Q2. Odd Numbers in a Range 
- Ask the user to input a number n. 
- Print all odd numbers between 1 and n, and also print how many odd numbers were found.
*/
import 'dart:io';

void main() {
  print('Please enter number : ');
  int n = int.parse(stdin.readLineSync().toString());

  int countOdd = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      countOdd++;
      print(i);
    }
  }
  print('$countOdd odd numbers were found');
}
