void main() {
  List<int> numbers = [10, 25, 5, 40, 15];

  int largest = numbers[0];
  int smallest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  print("Largest number: $largest");
  print("Smallest number: $smallest");
}