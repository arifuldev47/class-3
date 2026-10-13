// void main() {
//   int val;
//
//   for (val = 1; val <= 100; val++) {
//     if(val % 2 != 0) {
//      print("Odd $val");
//     }
//   }
// }

// void main() {
//   int val;
//
//   for (val = 1; val <= 100; val++) {
//     if(val % 2 != 0) {
//       print("Odd $val");
//     }
//   }
// }


// void main() {
//   int count = 0;
//
//   for (int val = 1; val <= 100; val++) {
//     if (val % 2 == 0) {
//       count++;
//     }
//   }
//   print("Total even numbers: $count");
// }

// void main(){
//   int count = 0;
//   for(int val =1; val<=100; val++){
//     if(val % 2 == 0){
//       count++;
//     }
//   }
//   print("Total Odd Number $count");
// }



// void main() {
//   for (int val = 2; val <= 100; val++) {
//     int count = 0;
//
//     for (int i = 1; i <= val; i++) {
//       if (val % i == 0) {
//         count++;
//       }
//     }
//
//     if (count == 2) {
//       print(val);
//     }
//   }
// }
//

// void main(){
//   for(int val =1; val<=100; val++){
//     if(val % 3==0 && val % 5==0){
//       print(val);
//     }
//   }
// }

import 'dart:io';
void main(){
  print("Enter a Number:");
  int n = int.parse(stdin.readLineSync()!);
  int fact = 1;
  for(int i = 1; i<=n; i++) {
    fact = fact * i;
  }
  print("Factorial $fact");
}