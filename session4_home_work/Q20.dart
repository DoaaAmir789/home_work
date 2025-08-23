/*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
*/
void main() {
  int userAge = 10;
  bool hasParent = false;
  String area = '';

  //If the user is under 18
  if (userAge < 18) {
    //if they have a parent
    if (hasParent) {
      area = 'restricted';
    } else {
      area = 'general';
    }
  } else {
    area = 'restricted';
  }

  switch (area) {
    case 'general':
      print('You can enter the general area');
      break;
    case 'restricted':
      print('You can enter the restricted area');
      break;
    default:
      print('Error!!');
  }
}
