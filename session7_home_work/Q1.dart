/*
Q1. Sum, Average & Compare 
- Ask the user for three numbers. 
- Print their sum and average.Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  print('Please enter three numbers : ');
  var number1 = num.parse(stdin.readLineSync().toString());
  var number2 = num.parse(stdin.readLineSync().toString());
  var number3 = num.parse(stdin.readLineSync().toString());

  num sum = number1 + number2 + number3;
  num average = sum / 3;

  print('Sum = $sum');
  print('Average = $average');

  print('check if the average is greater than 50 : ${average > 50}');
}
