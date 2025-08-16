/*
2. Describe the difference between var, dynamic, and explicitly typed variables in Dart.
*/
void main() {
  /*
  1-var is a keyword.var operate by seeing the value stored in it.
    dynamic is data type.dynamic can store any value in it
    explicit data type we clearly specify the data type ourselves.The stored value are based on the type.

  2- var is strong data type if is given the value in the same line
     dynamic weak data type
     explicit data type strong data type 
  */

  var price = 8;
  //price = 6.4;
  print(price);

  dynamic text = 'Hello';
  text = 43;
  print(text);

  int y = 50;
  //y = 'book';
  print(y);
}
