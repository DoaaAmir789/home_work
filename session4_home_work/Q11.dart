/*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/
void main() {
  bool isStudent = false;
  bool hasDiscount = false;

  double price = 550.5;
  bool aboveThreshold = price > 500;

  int discount = 0;
  double finalPrice = 0;
  //user is a student
  if (isStudent) {
    discount = 10;
    finalPrice = price - price * (discount / 100);
    //user has a coupon
  } else if (hasDiscount) {
    discount = 25;
    finalPrice = price - price * (discount / 100);
    //the price is above a threshold
  } else if (aboveThreshold) {
    discount = 20;
    finalPrice = price - price * (discount / 100);
  } else {
    finalPrice = price;
  }

  print(finalPrice);
}
