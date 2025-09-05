/*
Q6. Number Guessing (3 Tries) 
- Generate a random number between 1 and 20. 
- Let the user guess up to 3 times. If they fail, reveal the correct number.
*/
import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int randomNumber = random.nextInt(20) + 1;

  int numberOfTries = 0;
  print('guess number from 1 to 20 :');
  do {
    int userGuessNumber = int.parse(stdin.readLineSync()!);
    numberOfTries++;

    //if the user guessed correctly no need to continue the loop
    if (userGuessNumber == randomNumber) {
      print('Your guess is correct');
      print('The random number is $randomNumber');
      break;
    } else {
      print('Try Again');
    }
  } while (numberOfTries < 3);

//if numberOfTries is equal to 3 it means user failed to guess
  if (numberOfTries == 3) {
    print('the correct number is :$randomNumber');
  }
}
