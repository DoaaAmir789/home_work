/*
Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
*/
void main() {
  List<String> names = ['Heba', 'Nour', 'Heba', 'Eman'];

  //converts List to Set
  Set<String> namesSet = names.toSet();

  //counts of occurrences
  Map<String, int> occurrencesOfNames = {'Heba': 2, 'Nour': 1, 'Eman': 1};

  //Compare lengths
  print('Compare length of List and Set : ${names.length == namesSet.length}');

  if (occurrencesOfNames['Heba'] == 2) {
    print(
        '${occurrencesOfNames.keys.firstWhere((element) => occurrencesOfNames[element] == 2)} appeared twice');
  }
  if (occurrencesOfNames['Nour'] == 2) {
    print(
        '${occurrencesOfNames.keys.firstWhere((element) => occurrencesOfNames[element] == 2)} appeared twice');
  }
}
