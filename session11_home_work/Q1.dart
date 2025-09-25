/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid ® print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
*/
class Vehicle {
  String _brand = 'BMW';
  int _year = 1870;
  int _fuelConsumptionPer2Km = 10;
  int _currentCapacity = 500;
  Vehicle(
      {required String brand,
      required int year,
      required int fuelConsumptionPer2Km,
      required int currentCapacity}) {
    this.brand = brand;
    this.year = year;
    this.fuelConsumptionPer2Km = fuelConsumptionPer2Km;
    this.currentCapacity = currentCapacity;
  }
  set currentCapacity(int currentCapacity) {
    if (currentCapacity > 200) {
      this._currentCapacity = currentCapacity;
    } else {
      print('urrent Capacity must be greater than 200');
    }
  }

  set brand(String brand) {
    if (brand.isNotEmpty) {
      this._brand = brand;
    } else {
      print('Brand cannot be empty');
    }
  }

  set fuelConsumptionPer2Km(int fuelConsumptionPer2Km) {
    if (fuelConsumptionPer2Km > 0) {
      this._fuelConsumptionPer2Km = fuelConsumptionPer2Km;
    } else {
      print('Fuel Consumption Per 2 Km must be greater than 1');
    }
  }

  set year(int year) {
    if (year > 1850) {
      this._year = year;
    } else {
      print('Year must be greater than 1850');
    }
  }

  String get brand => _brand;
  int get year => _year;
  int get fuelConsumptionPer2Km => _fuelConsumptionPer2Km;
  int get currentCapacity => _currentCapacity;

  double fuelConsumption(double distance) {
    return (distance * _fuelConsumptionPer2Km) / 2;
  }
}

class Truck extends Vehicle {
  int _loadWeight = 5100;
  Truck(
      {required int loadWeight,
      required super.brand,
      required super.year,
      required super.fuelConsumptionPer2Km,
      required super.currentCapacity}) {
    this.loadWeight = loadWeight;
  }
  set loadWeight(int loadWeight) {
    if (loadWeight > 5000) {
      this._loadWeight = loadWeight;
    } else {
      print('Load Weight must be greater than 5000');
    }
  }

  int get loadWeight => _loadWeight;

  @override
  double fuelConsumption(double distance) {
    double forIncreasedWeight = 1 + (_loadWeight / 1000 * 0.15);
    return (distance * _fuelConsumptionPer2Km) / 2 * forIncreasedWeight;
  }
}

class Car extends Vehicle {
  int _noOfPassenger = 2;
  Car(
      {required super.brand,
      required super.year,
      required super.fuelConsumptionPer2Km,
      required super.currentCapacity,
      required int noOfPassenger}) {
    this.noOfPassenger = noOfPassenger;
  }
  set noOfPassenger(int noOfPassenger) {
    if (noOfPassenger < 4 && noOfPassenger > 0) {
      this._noOfPassenger = noOfPassenger;
    } else {
      print('Number of Passenger cannot exceed 4 and cannot be negative');
    }
  }

  int get noOfPassenger => _noOfPassenger;

  @override
  double fuelConsumption(double distance) {
    double forEachNewPassenger = 1 + _noOfPassenger * 0.05;
    return (distance * _fuelConsumptionPer2Km) / 2 * forEachNewPassenger;
  }
}

void main() {
  List<Vehicle> vehicles = [
    Truck(
        loadWeight: 2000,
        brand: 'BMW',
        year: 1900,
        fuelConsumptionPer2Km: 20,
        currentCapacity: 3000),
    Car(
        brand: 'Toyota',
        year: 1950,
        noOfPassenger: 2,
        fuelConsumptionPer2Km: 10,
        currentCapacity: 2000)
  ];

  List<double> trips = [100, 200];

  for (var vehicle in vehicles) {
    var totalFuelNeedforAllTrips = 0.0;
    for (var trip in trips) {
      totalFuelNeedforAllTrips += vehicle.fuelConsumption(trip);
    }

    if (vehicle.currentCapacity < totalFuelNeedforAllTrips) {
      print('${vehicle.brand} has not enough fuel');
      print('${vehicle.brand} Fuel : ${vehicle.currentCapacity}');
    } else {
      print('${vehicle.brand} has enough fuel');
      print('${vehicle.brand} Fuel : ${vehicle.currentCapacity}');
    }
  }
}
