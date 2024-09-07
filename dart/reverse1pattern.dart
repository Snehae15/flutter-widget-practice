void main() {
  int rows = 5;
  for (int i = rows; i >= 1; i--) {
    for (int j = 1; j <= rows - i; j++) {
      print("");
    }
    for (int k = 1; k <= i; k++) {
      print("*");
    }

  }
}