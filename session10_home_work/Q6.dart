/*
Q6
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' ® Valid
- '()[]{}' ® Valid
- '(]' ® Invalid
- '([)]' ® Invalid
- '{[]}' ® Valid
*/
import 'dart:io';

void main() {
  print('enter string');
  String s = "()[]{}";
  // String s = stdin.readLineSync()!;
  if (isValid(s) == true) {
    print('Valid String');
  } else {
    print('Invalid String');
  }
}

bool isValid(String s) {
  List<String> validString = [];
  List<String> openBrackets = ['(', '{', '['];
  List<String> closedBrackets = [')', '}', ']'];

  if (s.length <= 1) return false;

  for (int i = 0; i < s.length; i++) {
    String ch = s[i];
    if (openBrackets.contains(ch)) {
      validString.add(ch);
    } else if (closedBrackets.contains(ch)) {
      if (validString.isEmpty) return false;

      String lastCharacter = validString.last;
      if (lastCharacter == '[' && ch == ']') {
        validString.removeLast();
      }
      if (lastCharacter == '{' && ch == '}') {
        validString.removeLast();
      }
      if (lastCharacter == '(' && ch == ')') {
        validString.removeLast();
      } else
        return false;
    }
  }
  return validString.isEmpty;
}
