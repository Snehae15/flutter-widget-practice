void main(){
  int b = 10;
  if (b < 9) {
    print("Condition 1 is true");
    b++;
  }
  else if (b < 10) {
    print("Condition 2 is true");
  }
  else if (b >= 10) {
    print("Condition 3 is true");
  }
  else if (++b > 11) {
    print("Condition 4 is true");
  }
  else {
    print("All the conditions are false");
  }
}
