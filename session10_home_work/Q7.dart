/*
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('enter 10 numbers :');
  for (int i = 0; i < 10; i++) {
    int enteredNumber = int.parse(stdin.readLineSync()!);
    numbers.add(enteredNumber);
  }
  int largest = findLargestNumber(numbers);
  int smallest = findSmallestNumber(numbers);
  int difference = largest - smallest;
  double average = calculateAverage(numbers);
  List<int> aboveAvg = numbersAboveAverage(numbers, average);
  int countEven = countOfEven(numbers);
  int countOdd = countOfOdd(numbers);

  print("Largest: $largest");
  print("Smallest: $smallest");
  print("Difference: $difference");
  print("Average: $average");
  print("Above average: $aboveAvg");
  print("Even numbers: ${countEven}");
  print("Odd numbers: ${countOdd}");
}

int findLargestNumber(List<int> numbers) {
  int large = numbers[0];
  for (int number in numbers) {
    if (large < number) {
      large = number;
    }
  }
  return large;
}

int findSmallestNumber(List<int> numbers) {
  int small = numbers[0];
  for (int number in numbers) {
    if (small > number) {
      small = number;
    }
  }
  return small;
}

double calculateAverage(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

List<int> numbersAboveAverage(List<int> numbers, double average) {
  List<int> aboveAverage = [];
  for (int number in numbers) {
    if (number > average) {
      aboveAverage.add(number);
    }
  }
  return aboveAverage;
}

int countOfEven(List<int> numbers) {
  int countEven = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      countEven++;
    }
  }
  return countEven;
}

int countOfOdd(List<int> numbers) {
  int countOdd = 0;
  for (int number in numbers) {
    if (number % 2 != 0) {
      countOdd++;
    }
  }
  return countOdd;
}
