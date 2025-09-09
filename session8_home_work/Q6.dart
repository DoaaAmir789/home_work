/*
Q6. Sentence Analyzer 
- Ask the user to input a sentence. 
- Print how many words it contains. 
- Then print the shortest word and the longest word from the sentence.
*/
import 'dart:io';

void main() {
  print('Enter sentence');
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(' ');

  print('The sentence contains ${words.length} words');

  String shortestWord = words[0];
  String longestWord = words[0];

  for (String word in words) {
    if (longestWord.length < word.length) {
      longestWord = word;
    }
    if (shortestWord.length > word.length) {
      shortestWord = word;
    }
  }

  print('Longest Word : $longestWord ');
  print('Length of Longest Word : ${longestWord.length}');

  print('Shortest Word : $shortestWord');
  print('Length of Shortest Word : ${shortestWord.length}');
}
