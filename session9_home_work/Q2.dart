/*
Q2 Create a class Temperature with an attribute celsius.
Add a method toFahrenheit() that returns the temperature in Fahrenheit.
In main(), create an object and print the converted value.
*/
void main() {
  Temperature temp = Temperature(celsius: 20);
  print('${temp.celsius} C = ${temp.toFahrenheit()} F');
}

class Temperature {
  int celsius;

  Temperature({required this.celsius});
  double toFahrenheit() {
    return celsius * 9 / 5 + 32;
  }
}
