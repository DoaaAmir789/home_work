/*Q6
Create a program that calculates the factorial of 6 and prints the result.
*/
void main() {
  int factorial = 1;
  int number = 6;
  int index = 1;
  while (index <= number) {
    factorial = factorial * index;
    index++;
  }
  print('The factorial of $number is : $factorial');
}
/*
1! =>1          1
2! =>1*2        2
3! =>1*2*3      6
4! =>1*2*3*4    24
5! =>1*2*3*4*5  120
*/
