// void main(){
// checkEvenOdd(10);
// checkEvenOdd(15);
// }
// void checkEvenOdd(int number){
//   if(number % 2 == 0){
//     print("$number Even Number");
//   }
//   else{
//     print("$number Odd Number");
//   }
// }

// void main(){
//   print(findLargest(5, 8, 12));
//   print(findLargest(10, 30, 12));
//   print(findLargest(50, 20, 12));
// }
// int findLargest(int a,int b, int c){
//   if(a>=b && a >=c){
//     return a;
//   }
//   else if(b>=a && b>=c){
//     return b;
//   }
//   else{
//     return c;
//   }
// }

// void main(){
// print(celsiusToFahrenheit(25));
// }
// double celsiusToFahrenheit(double celsius){
//   return (celsius * 9 /5 )+32;
// }

// void main (){
//   print(checkLeapYear(2024));
//   print(checkLeapYear(2025));
//   print(checkLeapYear(2000));
//   print(checkLeapYear(500));
// }
// bool checkLeapYear(int year) {
//   if (year % 400 == 0 || year % 100 != 0 && year % 4==0) {
//     return true;
//   }
//   else {
//     return false;
//   }
// }

// import 'dart:typed_data';
// void main(){
//   swapNumber(20, 10);
// }
// void swapNumber(int a,int b){
//   print("Before swap:\na = $a b = $b");
//   a = a + b;
//   b = a - b;
//   a = a - b;
//
//   // int x = a;
//   // a = b;
//   // b = x;
//   print("After swap:\na = $a b = $b");
// }

// void main(){
//   percentage(500, 200);
// }
// void percentage(int total, int obtained){
//   double result = (obtained/total)*100;
//   print("Obtained results: $result %");
// }

// void main(){
// calculateDiscount(500, 20);
// }
// void calculateDiscount(double price, double discount){
//   double discountAmount =price * discount /100;
//   double finalPrice = price - discountAmount;
//   print(finalPrice);
// }

void main(){
convertMinutes(50);
}
void convertMinutes(int minutes){
  int hours = (minutes / 60).floor();
  int remainingMinutes = minutes % 60;

  print("Hours: $hours\nRemaining minutes: $remainingMinutes");
}

// void main(){
// checkageEligibility(30);
// }
// void checkageEligibility(int age){
//   if(age >= 18){
//     print("Eligible to vote");
//   }
//   else {
//     print("Not Eligible to vote");
//   }
// }