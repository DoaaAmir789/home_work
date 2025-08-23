/*
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
*/
void main() {
  //three integers
  int a = 50;
  int b = 30;
  int c = 15;

  //apply comaprison
  bool isBGreaterThanOrEqualA = b >= a;
  bool isCLessThanA = c < a;
  bool isANotEqualToB = a != b;
  bool isCEqualToA = c == a;

  //apply logical operators
  bool check = (isCLessThanA && isANotEqualToB) || isCEqualToA;
  bool compare = isBGreaterThanOrEqualA && isCEqualToA;

  print('(c < a && a != b) || c == a : $check');
  print('b >= a && a == b : $compare');

  //whether to print 'Rule passed' or 'Rule failed'
  bool rule1 = a * b > c;
  bool rule2 = c * 3 == b;
  if (rule1 || rule2) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
