/*Q12
Create a function that takes named parameters firstName, lastName, and an optional named
parameter age. Print the full name and, if age is provided, also print 'Age: X'.*/
void main() {
  userInformation(firstName: 'Doaa', lastName: 'Amir');
}

void userInformation(
    {required String firstName, required String lastName, int? age}) {
  print('Full name : $firstName  $lastName');
  if (age != null) {
    print("Age: $age");
  }
}
