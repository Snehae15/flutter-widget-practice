import 'dart:io';

void main() {
  // Get the year from the user
  print("Enter a year: ");

  int year = int.parse(stdin.readLineSync()!);

  bool isLeapYear = year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);

  if (isLeapYear) {
    print("$year is a leap year");
  } else {
    print("$year is not a leap year");
  }
}
