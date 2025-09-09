/*
Q1. Class with Method 
- Create a class Calculator with two attributes: num1 and num2. 
- Add a method addNumbers() that prints the sum of the two numbers. 
- Create an object in main() and call the method.
*/
void main() {
  Calculator firstOperation = Calculator();
  firstOperation.num1 = 6;
  firstOperation.num2 = 8;
  firstOperation.addNumbers();
}

class Calculator {
  int? num1;
  int? num2;

  void addNumbers() {
    int result = num1! + num2!;
    print('sum of $num1 + $num2 = $result');
  }
}
