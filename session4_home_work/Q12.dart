/*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
*/
void main() {
  Map<String, String?> phoneNumber = {'Jana': null, 'Nour': '01034567891'};

  bool isPhoneNumberNull = phoneNumber.containsValue(null);
  //If the phone number is null
  if (isPhoneNumberNull) {
    print('the number is missing');
    phoneNumber.update(
        phoneNumber.keys.firstWhere((element) => phoneNumber[element] == null),
        (value) => '01523456788');
  }
  //print its length
  print(phoneNumber['Jana']?.length);
}
