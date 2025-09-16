/*
Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
*/

class Product {
  String? _name;
  double? _price;

  Product({required String name, required double price}) {
    this.name = name;
    this.price = price;
  }
  set name(String name) {
    if (name.isNotEmpty) {
      this._name = name;
    } else {
      print('Invalid Name');
    }
  }

  set price(double price) {
    if (!price.isNegative) {
      this._price = price;
    } else {
      print('Invalid Price');
    }
  }

  String get name => this._name ?? 'Unknown';

  double get price => this._price ?? -1;

  double get discountedPrice => this._price! - (this._price! * (10 / 100));
}

void main() {
  Product product1 = Product(name: 'Table', price: 500);
  product1.price = -50;
  print('Before Discount : ${product1.price}');
  print('After Discount : ${product1.discountedPrice}');
}
