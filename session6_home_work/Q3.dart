/*Q3
Create a program with a set of numbers [3, 6, 9, 3, 12, 15]. Print whether the set contains the
number 10.
*/

void main() {
  List<int> numbers = [3, 6, 9, 3, 12, 15];
  int searchNumber = 10;
  bool found = false;

  for (int index = 0; index < numbers.length; index++) {
    if (numbers[index] == searchNumber) {
      found = true;
      print(index);
      break;
    }
  }
  print(found);
}
