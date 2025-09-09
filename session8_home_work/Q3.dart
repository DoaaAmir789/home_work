/*
Q3. Modify Attributes 
- Create a class Person with attributes name and age. 
- Create an object and set its initial values using a constructor. 
- Then change the age of the object and print the updated details.
*/
void main() {
  Person p1 = Person(name: 'Alaa', age: 23);

  p1.age = 24;

  print('Name : ${p1.name}');
  print('Age : ${p1.age}');
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}
