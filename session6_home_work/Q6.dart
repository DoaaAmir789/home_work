/*Q6
Create a program that prints all numbers from 1 to 20, but only those divisible by 4.
*/
void main() {
  for (int index = 1; index <= 20; index++) {
    if (index % 4 == 0) {
      print(index);
    }
  }
}
