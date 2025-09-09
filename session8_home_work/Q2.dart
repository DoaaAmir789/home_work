/*
Q2. Class with Constructor 
- Create a class Car with attributes brand and year. 
- Add a constructor to set the values when creating the object. 
- In main(), create two car objects with different data and print their details.
*/
void main() {
  Car c1 = Car(brand: 'Toyota', year: 2009);
  print('Brand : ${c1.brand}');
  print('Year : ${c1.year}');

  Car c2 = Car(brand: 'Honda', year: 2010);
  print('Brand : ${c2.brand}');
  print('Year : ${c2.year}');
}

class Car {
  String brand;
  int year;

  Car({required this.brand, required this.year});
}
