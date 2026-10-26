import 'dart:io';
void main(){
  print("Inter Your Number");
  int number = int.parse(stdin.readLineSync()!);{
    switch(number){
      case 1:
        print("CST");
        break;
      case 2:
        print("CSE");
        break;
      case 3:
        print("EEE");
        break;
    }
  }
}