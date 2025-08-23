/*
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/
void main() {
  //price
  double price = 20.5;
  //Apply toString
  String priceString = price.toString();

  String priceTag = priceString + ' EGP';

  //Apply padLeft
  print('priceTag before padleft : $priceTag');
  print('priceTag after padleft : ${priceTag.padLeft(10)}');

  //compare the 2 lengths
  print('PriceTag length : ${priceTag.length}');
  print('Price length : ${priceString.length}');
  print('is priceTag != price: ${priceString.length != priceTag.length}');
}
