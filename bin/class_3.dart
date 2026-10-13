// import 'dart:io';
// void main(){
//   int val1 = 10;
//   int val2 = 20;
//
//   //Arithmetic Operators
//   print(val1 + val2);
//   print(val1 - val2);
//   print(val1 * val2);
//   print(val1 / val2);
//   print(val1 % val2);
//
//   //Assignment operators ==,=+,-=,*=,
//   int result = val1 + val2;
//   print(result);
//   result += 50;
//   print(result);
//   result -= 50;
//   print(result);
//   result *= 50;
//   print(result);
//
// //  Relational Operators =,>, <,<=,>=,==,!=
// print(val1 == val2);
//   print(val1 <= val2);
//   print(val1 >= val2);
//   print(val1 > val2);
//   print(val1 != val2);
//   print(val1 < val2);
// // increment operators ++,--
//   int val =10;
//   print(++val);
//   print(val++);
//   print(++val);
//   print(++val);
//   print(val);
//  // conditional operators if,if else, if else if, switch
//   bool isFriday = true;
//   if(isFriday){
//     print("we will go to park");
//   }
// }

// import 'dart:io';
// void main(){
//   print("Inter Your Marks");
//   int marks = int.parse(stdin.readLineSync()!);
//   if(marks >= 80 && marks <= 100){
//     print("Grad A+");
//   }
//   else if(marks >= 60){
//     print("Grad A-");
//   }
//   else if(marks >= 50){
//     print("Grad B");
//   }
//   else if(marks >= 45){
//     print("Grad C");
//   }
//   else if(marks >= 40){
//     print("Grad D");
//   }
//   else
//     print("Grad F");
// }

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