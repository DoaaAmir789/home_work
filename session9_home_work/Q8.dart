/*
Q8 Ask the user to input a sentence. 
Print all the words that appear only once in the sentence. 
Also print the total count of unique words.
*/
import 'dart:io';

void main() {
  print('Enter sentence : ');
  String sentence = stdin.readLineSync()!.toLowerCase();

  List<String> words = sentence.split(' ');
  print(words);

  Map<String, int> wordsOccur = {};

  for (String word in words) {
    if (wordsOccur.containsKey(word)) {
      wordsOccur[word] = wordsOccur[word]! + 1;
    } else {
      wordsOccur[word] = 1;
    }
  }
  print(wordsOccur);
  int countUniqueWords = 0;
  wordsOccur.forEach((key, value) {
    if (value == 1) {
      print(key);
      countUniqueWords++;
    }
  });

  print('Count of Unique Words $countUniqueWords');
}
