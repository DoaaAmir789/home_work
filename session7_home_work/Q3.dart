/*
Q3. Word Reversal & Vowel Count 
- Take a word from the user. 
- Print the word reversed, and also count how many vowels it has.
*/
import 'dart:io';

void main() {
  print('Please enter word');
  String word = stdin.readLineSync().toString();
  word = word.toLowerCase();

  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int vowelCount = 0;
  String reversedString = '';

  for (int i = word.length - 1; i >= 0; i--) {
    String character = word[i];
    reversedString += character;
    if (vowels.contains(character)) {
      vowelCount++;
    }
  }
  print('reversed word : $reversedString');
  print('count of vowels :$vowelCount');
}
