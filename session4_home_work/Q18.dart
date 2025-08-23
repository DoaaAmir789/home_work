// /*
// Question 18
// Write a Dart program that reads environment variables from a map. If a value is null, replace it with
// a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
// conditions.
// */

void main() {
  Map<String, String?> environmentVariables = {
    'TEMP': 'C:\\Users\\User\\AppData\\Local\\Temp',
    'PATH': null
  };
  // reads environment variables from a map
  String? env = environmentVariables['PATH'];

  //checks if a value is null replace it with default
  bool environmentVariablesHasNull = environmentVariables.containsValue(null);
  if (environmentVariablesHasNull) {
    environmentVariables.update(
        environmentVariables.keys
            .firstWhere((element) => environmentVariables[element] == null),
        (value) => 'enter missing value');
  }
  // Print values in uppercase

  print(environmentVariables['TEMP']?.toUpperCase());
  print(environmentVariables['PATH']?.toUpperCase());

  //display 'Prod ready' or 'Non-prod'
  if (env != null) {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
