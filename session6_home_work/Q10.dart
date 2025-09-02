/*Q10
Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
returned value.
*/
void main() {
  int number = 3;
  int total = sumOfElements(number);
  print('The sum of numbers from 1 to $number : $total');
}

int sumOfElements(int number) {
  int sum = 0;
  for (int index = 0; index <= number; index++) {
    sum += index;
  }
  return sum;
}
