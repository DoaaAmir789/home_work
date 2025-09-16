/*
Q1
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative balance.
*/
class BankAccount {
  int? _balance;

  BankAccount({required int balance}) {
    this.balance = balance;
  }

  set balance(int balance) {
    if (balance >= 0) {
      this._balance = balance;
    } else {
      print('Invalid balance');
    }
  }

  int get balance => this._balance ?? -1;
}

void main() {
  BankAccount b1 = BankAccount(balance: 2500);

  b1.balance = 5000;
  b1.balance = -10;
  print('Balance: ${b1.balance}');
}
