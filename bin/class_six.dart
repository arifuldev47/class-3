import 'dart:convert';
import 'dart:io';

class Bkash{
  String? name;
  String? accountNumber;
  String? pin;
  double balance = 0;


  List accounts = [];
  void accountCreation(){
    while (true){
      print('Enter yor name');
      name = stdin.readLineSync();
      if(name!.isEmpty){
        print("Name Cannot be empty!!!");
      } else{
        break;
      }
    }
    bool ch = true;
    while (ch){
      print("Enter Account Number:");
      accountNumber = stdin.readLineSync()!.trim();
      if(accounts.length != 0){
        for (var account in accounts) {
          if (account[1] == accountNumber) {
            print("Error: Duplicate account number");
          } else {
            ch = false;
          }
        }
      } else {
        ch = false;
      }
    }
    while (true){
      print("Enter 4-digit PIN:");
      pin = stdin.readLineSync()!.trim();
      if (pin?.length != 4) {
        print("Error: PIN must be exactly 4 digits");
      } else {
        break;
      }
    }
    do{
      print("Enter Initial Deposit:");
      balance = double.tryParse(stdin.readLineSync()!.trim())!;
      if (balance < 500){
        print("Error: Deposit must not be less than 500!!!");
      }
    }while (balance < 500);
    accounts.add([name, accountNumber, pin, balance]);
  }
  
  void mainMenu(){
    print("1. Check Balance");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. Change PIN");
    print("5. Account Information");
    print("6. Exit");
    print("Enter Your Choice:");

    String choice = stdin.readLineSync()!.trim();

    switch (choice) {
      case "1":
        checkBalance();
        break;

      case "2":
        depositMoney();
        break;

      case "3":
        withdrawMoney();
        break;

      case "4":
        changePin();
        break;

      case "5":
        accountInformation();
        break;

      case "6":
        print("Thank you for using our Banking App!");
        return;

      default:
        print("Invalid Choice! Try Again.");
    }
  }

  void checkBalance(){
    String cPin;
    int n = 0;
    double tk = accounts[0][3];
    do{
      print("Enter 4-digit PIN:");
      cPin = stdin.readLineSync()!.trim();
      if(cPin != accounts[0][2]){
        print("Incorrect PIN");
        n++;
      } else {
        print("Your current account balance is: $tk TK");
      }
      if(n > 2){
        print("You entered wrong pin 3 times");
        print("Maybe you are not the right person");
        break;
      }
    } while(cPin != accounts[0][2]);
  }

  void depositMoney(){
    double dipo = 1;
    do{
      print("Enter deposit amount: ");
      dipo = double.tryParse(stdin.readLineSync()!.trim())!;
      if(dipo > 100000 || dipo <= 0){
        print("Please enter between 1 - 100000 in tk");
      } else {
        accounts[0][3] += dipo;
        print("Transaction Successful!!!");
      }
    }while(dipo > 100000 || dipo <= 0);


  }

  void withdrawMoney(){
    String p;
    double t;
    double n = 0;
    double tk = accounts[0][3];
    do{
      print("Enter your withdraw amount:");
      t = double.tryParse(stdin.readLineSync()!.trim())!;
      if(t < 1 || t > 50000){
        print("Amount must be between 1 - 50000");
      }

    }while(t < 1 || t > 50000);
    do{
      print("Enter 4-digit PIN:");
      p = stdin.readLineSync()!.trim();
      if(p != accounts[0][2]){
        print("Incorrect PIN");
        n++;
      } else {
        accounts[0][3] -= t;
        tk = accounts[0][3];
        print("Transaction Successful!!!");
        print("Your current account balance is: $tk TK");
      }
      if(n > 2){
        print("You entered wrong pin 3 times");
        print("Maybe you are not the right person");
        break;
      }
    } while(p != accounts[0][2]);
  }

  void changePin(){
    String op;
    String npin;
    double n = 0;
    do{
      print("Enter old PIN:");
      op = stdin.readLineSync()!.trim();
      if(op != accounts[0][2]){
        print("Incorrect PIN");
        n++;
      }
      if(n > 2){
        print("You entered wrong pin 3 times");
        print("Maybe you are not the right person");
        return;
      }
    } while(op != accounts[0][2]);

    while (true){
      print("Enter new PIN:");
      npin = stdin.readLineSync()!.trim();
      if (npin.length != 4) {
        print("Error: PIN must be exactly 4 digits");
      } else if (op == npin){
        print("New pin can not be same as old pin");
      } else {
        String confP;
        int x = 0;
        do{
          print("Confirm new PIN:");
          confP =  stdin.readLineSync()!.trim();
          if(confP != npin){
            print("Confirm pin didn't match.");
            x++;
          }
          if(x > 2){
            print("Try Again.");
            break;
          }
        }while(confP != npin);
        if(npin == confP){
          accounts[0][2] = npin;
          print("Pin changed Successfully!!");
        }
        break;
      }
    }

  }

  void accountInformation(){
    String n = accounts[0][0];
    String ac =  accounts[0][1];
    double bl = accounts[0][3];
    print("---Account holder's details---");
    print('\nName: \t$n');
    print('Account number: \t$ac');
    print('Current amount: \t$bl');
  }
}


void main(){
  Bkash B = Bkash();
  int op = 1;
  while (true){
    print("\n===== BANKING APP =====");
    if(op != 3){
      print("1. Crete a new account");
      print("2. Account Menu");
      print("3. Exit");
      op = int.parse(stdin.readLineSync()!);
      if(op == 1){
        B.accountCreation();
      } else if(op == 2){
        B.mainMenu();
      }
    } else {
      break;
    }
  }
}