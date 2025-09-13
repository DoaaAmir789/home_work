/*
Q1 Create a class City with attributes name and population. 
In main(), create two city objects and print their details.
*/
void main() {
  City cairo = City(name: 'Cairo', population: 23000);
  print('Name : ${cairo.name}');
  print('Population : ${cairo.population}');

  City alexandria = City(name: 'Alexandria', population: 24000);
  print('Name : ${alexandria.name}');
  print('Population : ${alexandria.population}');
}

class City {
  String name;
  int population;

  City({required this.name, required this.population});
}
