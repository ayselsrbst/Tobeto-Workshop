import 'dart:math';

bool isArmstrong(int number) {
  int originalNumber = number;
  int numDigits = number.toString().length;
  int total = 0;

  while (number > 0) {
    int digit = number % 10;
    total += pow(digit.toDouble(), numDigits).toInt();
    number ~/= 10;
  }

  return total == originalNumber;
}

void main() {
  int testNumber = 153;
  if (isArmstrong(testNumber)) {
    print("$testNumber bir Armstrong sayısıdır.");
  } else {
    print("$testNumber bir Armstrong sayısı değildir.");
  }
}
