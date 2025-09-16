/*
Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/
class Car {
  String? _brand;
  int? _year;

  Car({required String brand, required int year}) {
    this.brand = brand;
    this.year = year;
  }
  set brand(String brand) {
    if (brand.isNotEmpty) {
      this._brand = brand;
    } else {
      print('Invalid Brand');
    }
  }

  String get brand => this._brand ?? 'Unknown';

  set year(int year) {
    if (year >= 1886) {
      this._year = year;
    } else {
      print('Invalid Year');
    }
  }

  int get year => this._year ?? -1;
}

void main() {
  Car car1 = Car(brand: 'BMW', year: 1890);
  print('Brand : ${car1.brand}');
  print('Year : ${car1.year}');

  Car car2 = Car(brand: '', year: 1885);
  print('Brand : ${car2.brand}');
  print('Year : ${car2.year}');
}
