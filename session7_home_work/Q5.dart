/*
Q5. Multiplication Table with Sum 
- Ask the user for a number. 
- Print its multiplication table up to 10, then calculate the sum of all results.

*/
import 'dart:io';

void main() {
  print('Please enter number : ');
  int number = int.parse(stdin.readLineSync().toString());

  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    int multiplyOfN = i * number;
    sum += multiplyOfN;
    print('$i x $number = ${multiplyOfN}');
  }

  print('sum of all results : $sum');
}
