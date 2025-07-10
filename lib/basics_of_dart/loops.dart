// This file explain
/* Loops (for loop , for…in loop , for each … loop , while loop , do..while loop) */
void main() {
// for loop:
  for (int i = 0; i < 5; i++) {
    print('ahmed');
  }
// for…in loop:
  var a = [1, 2, 3, 4, 5];
  for (int i in a) {
    print(i);
  }
// for each … loop:
  var num = [1, 2, 3, 4, 5];
  num.forEach((var n) => print(n));
  num.forEach((var element) {
    print(element);
  });
// while loop:
  var a1 = 4;
  int i = 1;
  while (i <= a1) {
    print('Hello ahmed');
    i++;
  }
// do..while loop:
  var a2 = 4;
  int i1 = 1;
  do {
    print('Hello ahmed');
    i1++;
  } while (i1 <= a2);
/* Loop Control Statements(Break and Continue) */
// Break Statement
  int count = 1;
  while (count <= 10) {
    print("ahmed, you are inside loop $count");
    count++;
    if (count == 4) {
      break;
    }
  }
  print("ahmed, you are out of while loop");
// Continue Statement
  int count1 = 0;
  while (count1 <= 10) {
    count1++;
    if (count1 == 4) {
      print("Number 4 is skipped");
      continue;
    }
    print("ahmed, you are inside loop $count1");
  }
  print("ahmed, you are out of while loop");
}
/************************************/