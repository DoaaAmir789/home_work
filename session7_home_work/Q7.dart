/*
Q7. Sentence Word Counter
- Ask the user for a short sentence. 
- Print how many words it contains and how many characters (excluding spaces).
*/

import 'dart:io';

void main() {
  print('Please enter short sentence :');
//Dart is fun and Dart is powerful
  String sentence = stdin.readLineSync().toString();

  var words = sentence.split(' ');

  print(words);
  print('The sentence conatins ${words.length} words');
  int totalCharacters = 0;
  for (int i = 0; i < words.length; i++) {
    String currentWord = words[i];
    totalCharacters += currentWord.length;
  }
  print(
      'The sentence conatins ${totalCharacters} characters (excluding spaces).');
}
