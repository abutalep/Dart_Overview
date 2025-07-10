// This file explain
/* Different types of operators in dart */
/// 1-Arithmetic operators
/// 2-Relational operators
/// 3-Type test operators
/// 4-Bitwise Operators
/// 5-Assignment Operators
/// 6-Logical Operators
/// 7-Conditional Operators
/// 8-Null-aware Operators
/// 9-Cascade NotationOperators



void main() {
// 1-Arithmetic operators
// Ex(+,-,*,/,~/,%)
  int a = 2;
  int b = 3;
  var c = a + b;
  print("Sum of a and b is $c");
  var d = a - b;
  print("The difference between a and b is $d");
  var e = -d;
  print("The negation of difference between a and b is $e");
  var f = a * b;
  print("The product of a and b is $f");
  var g = b / a;
  print("The quotient of a and b is $g");
  var h = b ~/ a;
  print("The quotient of a and b is $h");
  var i = b % a;
  print("The remainder of a and b is $i");

// 2-Relational operators
// Ex(>,<,==,<=,>=,!=)
  int a1 = 2;
  int b1 = 3;
  var c1 = a1 > b1;
  print("a is greater than b is $c1");
  var d1 = a1 < b1;
  print("a is smaller than b is $d1");
  var e1 = a1 >= b1;
  print("a is greater than b is $e1");
  var f1 = a1 <= b1;
  print("a is smaller than b is $f1");
  var g1 = b1 == a1;
  print("a and b are equal is $g1");
  var h1 = b1 != a1;
  print("a and b are not equal is $h1");

// 3-Type test operators
// Ex(is,is!)
  String a2 = "GFG";
  double b2 = 3.3;
  print(a2 is String);
  print(b2 is! int);
// 4-Bitwise Operators
// Ex(&,|,^,~,<<,>>)
  int a3 = 5;
  int b3 = 7;
  // Performing Bitwise AND on a and b
  var c3 = a3 & b3;
  print(c3);
  // Performing Bitwise OR on a and b
  var d3 = a3 | b3;
  print(d3);
  // Performing Bitwise XOR on a and b
  var e3 = a3 ^ b3;
  print(e3);
  // Performing Bitwise NOT on a
  var f3 = ~a3;
  print(f3);
  // Performing left shift on a
  var g3 = a3 << b3;
  print(g3);
  // Performing right shift on a
  var h3 = a3 >> b3;
  print(h3);

// 5-Assignment Operators
// Ex(=,??=)
// Equal to (=) Use to assign values to the expression or variable
// Assignment operator (??=) Assign the value only if it is null.
  int a4 = 5;
  int b4 = 7;
  var c4 = a4 * b4;
  print(c4);
  var d4;
  d4 ??= a4 + b4;
  print(d4);
  d4 ??= a4 - b4;
  print(d4);

// 6-Logical Operators
// Ex(&&,||,!)
  int a5 = 5;
  int b5 = 7;
  // Using And Operator
  bool c5 = a5 > 10 && b5 < 10;
  print(c5);
  // Using Or Operator
  bool d5 = a5 > 10 || b5 < 10;
  print(d5);
  // Using Not Operator
  bool e5 = !(a5 > 10);
  print(e5);

// 7-Conditional Operators
  // condition ? expersion1 : expersion2
  // It is a simple version of if-else statement is called(ternary operator). If the condition is true than expersion1 is executed else expersion2 is executed
  int a6 = 5;
  var c6 = (a6 < 10) ? "Statement is Correct" : "Statement is Wrong";
  print(c6);
  // expersion1 ?? expersion2
  // If expersion1 is non-null returns its value else returns expression2 value
  int? n6;
  var d6 = n6 ?? "n has Null value";
  print(d6);
  n6 = 10;
  d6 = n6;
  print(d6);

// 8-Null-aware Operators
// EX( ?? , ??= , ?. , ! , ?.. , ?[] , ...? )
  // if-null operator (??): value ?? value_if_null returns the value if the value is not null. Otherwise, it returns the value_if_null.
  String? s;
  String s1=s??"Error,value is null";
  print(s1);
  // null-aware assignment operator (??=):
  String? input; 
  input??="Error"; //In this syntax, if the input is null, it is assigned the string 'Error'.
  // null-aware access operator (?.):  returns null if the objectName is null.
  String? name;
  print(name?.length); // null
  // Null-aware index operator ( ?[] ): The null-aware index operator ?[] allows you to access an element of a list when the list might be null ,the ?[] returns a null value.
  List? scores = [1, 2, 3, 4, 5];
  scores = null;
  print(scores?[3]); // null
  // Spread Operator (...) and Null-aware Spread Operator (...?): are used for inserting multiple elements in a collection like Lists, Maps, etc.
  List? l1 = ["Geeks","For","Geeks"];
  List? l2=["Wow",...l1,"is","amazing"];
  print(l2);
  
// 9-Cascade NotationOperators
//  ..  It is used to perform multiple methods on the same object.
  // Creating objects of class GFG
  Test test1 = new Test();
  Test test2 = new Test();
  // Without using Cascade Notation
  test1.set(1, 2);
  test2.add();
  // Using Cascade Notation
  test2
    ..set(3, 4)
    ..add();
}

class Test {
  var a;
  var b;
  void set(x, y) {
    this.a = x;
    this.b = y;
  }

  void add() {
    var z = this.a + this.b;
    print(z);
  }
}
