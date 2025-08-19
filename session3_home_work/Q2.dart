/*
Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/
void main() {
  String country = 'Egypt';
  int year = 2002;
  double weight = 65;
  bool likesCoding = true;

  print(
      'Country : $country , Year : $year , Weight : $weight and likes coding : $likesCoding');

  weight = 60;
  print(weight);
}
