import 'package:lab2/account.dart';
import 'dart:io';

Account account = Account("", "", 0);

void main(List<String> arguments) {
  // task1();
}

void task1() {
  print("Bank Account management system: ");
  account = initAccount();
  print("");
  print("Account initialized successfuly");
  account.show();

  doOperation();
}

void doOperation() {
  print("Input operation(d - deposit; w - withdraw; s - show)");
  final flag = true;
  while (flag) {
    var command = stdin.readLineSync();
    if (command == null) {
      print("Please input valid command");
      continue;
    }

    switch (command) {
      case "d":
        deposit();
      case "w":
        withdraw();
      case "s":
        show();
      default:
        print("Please input valid command");
        continue;
    }

    return;
  }
}

void deposit() {
  print("Please enter an amount to deposit");
  var amount = getAmount();
  account.deposit(amount);
  account.show();
}

void withdraw() {
  print("Please enter an amount to withdraw");
  var amount = getAmount();
  account.withdraw(amount);
  account.show();
}

void show() {
  account.show();
}

double getAmount() {
  final flag = true;
  while (flag) {
    var inputLine = stdin.readLineSync();
    if (inputLine == null) {
      print("Invalid data input. Please try again.");
      continue;
    }

    var amount = double.tryParse(inputLine);
    if (amount == null || amount <= 0) {
      print("Invalid data input. Please try again.");
      continue;
    }

    return amount;
  }
}

Account initAccount() {
  print("Please init account.");
  final flag = true;
  while (flag) {
    print(
        "Input account info in following pattern \"AccountNumber\" \"AccountOwner\" \"InitialBalance\"");

    var inputLine = stdin.readLineSync();
    if (inputLine == null) {
      print("Invalid data input. Please try again.");
      continue;
    }

    var inputArray = inputLine.split(" ");
    if (inputArray.length != 3) {
      print("Invalid data input. Please try again.");
      continue;
    }

    var accountNumber = inputArray[0];
    var accountOwner = inputArray[1];
    var initBalance = double.tryParse(inputArray[2]);
    if (initBalance == null || initBalance < 0) {
      print("Invalid balance. Please try again.");
      continue;
    }

    return Account(accountNumber, accountOwner, initBalance);
  }
}
