/*
Q4 Create a class Employee with attributes name and salary. 
Add a method giveRaise(int amount) that increases the salary. 
In main(), create an employee, give them a raise, and print the new salary.
*/
void main() {
  Employee ali = Employee(name: 'Ali', salary: 10000);
  ali.giveRaise(2000);
  print('Ali Salary : ${ali.salary}');
}

class Employee {
  String name;
  int salary;

  Employee({required this.name, required this.salary});

  int giveRaise(int amount) {
    salary += amount;
    return salary;
  }
}
