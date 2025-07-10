// This file explain
/* If Else Statement (if , if..else, Nested if, if-else-if), switch case */
void main() {
// If Statement
  int a = 10;
  if (a > 3) {
    print("Condition is true");
  }
// if…else Statement
  int a1 = 10;
  if (a1 > 30) {
    print("Condition is true");
  } else {
    print("Condition id false");
  }
// else…if Ladder
  int a2 = 10;
  if (a2 < 9) {
    print("Condition 1 is true");
    a2++;
  } else if (a2 < 10) {
    print("Condition 2 is true");
  } else if (a2 >= 10) {
    print("Condition 3 is true");
  } else if (++a2 > 11) {
    print("Condition 4 is true");
  } else {
    print("All the conditions are false");
  }
// Nested if Statement
  int a3 = 10;
  if (a3 > 9) {
    a3++;
    if (a3 < 10) {
      print("Conditon 2 is true");
    } else {
      print("All the Conditions are false");
    }
  }
/* Switch Case */
// Normal switch-case statement
  int a4 = 1;
  switch (a4) {
    case 1:
      {
        print("a number 1");
      }
      break;
    case 2:
      {
        print("a number 2");
      }
      break;
    case 3:
      {
        print("a number 3");
      }
      break;
    default:
      {
        print("This is default case");
      }
      break;
  }
  // the break not important in switch case 
  switch (a4) {
    case 1:
      print("a number 1");

    case 2:
      print("a number 2");

    case 3:
      print("a number 3");

    default:
      print("This is default case");
  }
// Nested switch-case statement
  int a5 = 1;
  String a6 = "ahmed";
  switch (a5) {
    case 1:
      {
        switch (a6) {
          case 'ahmed':
            {
              print("Welcome to Dart");
            }
        }
      }
      break;
    case 2:
      {
        print("a number 2");
      }
      break;
    default:
      {
        print("This is default case");
      }
      break;
  }
}
/**********************************/
