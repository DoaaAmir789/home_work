/*
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/
void main() {
  List<int> items = [10, 20, 20, 35, 22, 38, 38, 39];
  //Convert List and Set
  Set<int> itemsSet = items.toSet();

  //If the List and Set are equal this means there were no duplicates else there were duplicates
  bool compareSetAndListNotEqual = itemsSet.length != items.length;

  if (compareSetAndListNotEqual) {
    print('duplicates were removed');
  }
}
