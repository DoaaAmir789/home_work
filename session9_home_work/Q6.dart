/*
Q6 Create a class NumberCheck with an attribute value. 
Add a method isEven() that returns true if the number is even, false otherwise. 
In main(), test the method with one number.
*/
void main() {
  int x = 9;
  NumberCheck isNumberEven = NumberCheck(value: x);
  print('Is $x even : ${isNumberEven.isEven()}');
}

class NumberCheck {
  int value;

  NumberCheck({required this.value});

  bool isEven() {
    return value % 2 == 0;
  }
}
