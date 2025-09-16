/*
Given two strings s and t, return true if t is an anaagram of s, and false otherwise.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true

Example 2:
Input: s = "rat", t = "car"
Output: false

*/
void main() {
  String s = "a";
  String t = "ab";

  print('Is String s and String t are ${isAnagram(s, t)}');
}

// bool isAnagram(String s ,String t){

// }
bool isAnagram(String s, String t) {
  var sFreq = buildCharacterFrequency(s);
  var tFreq = buildCharacterFrequency(t);

  if (sFreq.length != tFreq.length) {
    return false;
  }
  for (var entry in sFreq.entries) {
    if (tFreq[entry.key] != entry.value) {
      return false;
    }
  }
  return true;
}

Map<String, int> buildCharacterFrequency(String str) {
  List<String> chars = str.split('');
  Map<String, int> charFreq = {};
  for (var ch in chars) {
    if (charFreq.containsKey(ch)) {
      charFreq[ch] = charFreq[ch]! + 1;
    } else {
      charFreq[ch] = 1;
    }
  }
  return charFreq;
}
