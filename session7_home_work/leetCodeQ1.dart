/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters,
it reads the same forward and backward.Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.
Example 1:
Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.

Example 2:
Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.

Example 3:
Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
*/
void main() {
  String s = "A man, a plan, a canal: Panama";
  print(isPalindrome(s));
}

bool isPalindrome(String s) {
  //to convert string lowercase
  s = s.toLowerCase();
  //to remove all non-alphanumeric characters
  RegExp nonAlphanumeric = RegExp(r'[^a-z0-9]');
  s = s.replaceAll(nonAlphanumeric, '');

  String reversedString = '';
  for (int i = s.length - 1; i >= 0; i--) {
    String character = s[i];
    reversedString += character;
  }

  return reversedString == s;
}
