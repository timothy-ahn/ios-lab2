class Account {
  String accountNumber = "";
  String accountOwner = "";
  double balance = 0;

  Account(this.accountNumber, this.accountOwner, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposit completed successfuly");
  }

  void withdraw(double amount) {
    if (balance < amount) {
      print("Balance is not enough to proceed withdraw");
      return;
    }

    balance -= amount;
    print("Withdraw completed successfuly");
  }

  void show() {
    print("$accountNumber - $accountOwner - $balance");
  }
}
