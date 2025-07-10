// This file explain 
//types of parameters in functions (required positional parameter,required Named parameter,optional positional parameter,Optional Named parameter,default valued parameter)
//Types of functions(basic functions,anonymous function,arrow funtion or lambda function, Recursive Function)

// 1: Function without parameter and return value

void Welcome() {
  print("Welcome to function");
}

// 2: Function with parameter and return value.
// required positional parameter
int add(int a, int b) {
  int result = a + b;
  return result;
}

/*  Functions with Optional Parameter */
// optional positional parameter
void ex1([var g1, var g2]) {
  print("g1 is $g1");
  print("g2 is $g2");
}

// required named parameter
void ex2( {required int g1,required var g2,required var g3}) {
  print("g1 is $g1");
  print("g2 is $g2");
  print("g3 is $g3");
}

// optional named parameter
void ex4(int g1, {var g2, var g3}) {
  print("g1 is $g1");
  print("g2 is $g2");
  print("g3 is $g3");
}

// optional parameter with default values.
void ex3(int g1, {int g2 = 12}) {
  print("g1 is $g1");
  print("g2 is $g2");
}

/* Recursive Function in Dart :*/
// The recursive function is those functions in which function calls itself.
//It is a good way to avoid repeatedly calling the same function to get the output.
// Example: Recursive function for fibonacci series.
int fibonacci(int n) {
  // This is recursive function as it calls itself
  return n < 2 ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}

/*  Lambda Function in Dart : */
// They are the short way of representing a function in Dart. They are also called arrow function.
// But you should note that with lambda function you can return value for only one expression.
//  Example: Lambda function in dart.
void lamb() => print("Welcome to lambda");


void main() {
  print("Calling the Function without parameter and return value");
  //basic functions
  Welcome();

  print("Calling the functionFunction with parameter and return value");
  //Functions with required parametr
  print("Calling the function with required positional parameter:");
  var output = add(10, 20);
  print(output);
  print("Calling the function with required Named parameter:");
  ex2(g1: 1,g2: 2, g3: 12);

  //Functions with Optional Parameter
  print("Calling the function with optional positional parameter:");
  ex1(01);
  print("Calling the function with Optional Named parameter:");
  ex4(1,g3: 12);
  print("Calling function with default valued parameter");
  ex3(01);

  // calling recursive functions
  print("Calling fibonacci function");
  var i = 20;
  print('fibonacci($i) = ${fibonacci(i)}');

  // Calling Lambda function
  print("Calling Lambda function");
  lamb();
  
  // Using an anonymous function with `forEach`
  var num = [1, 2, 3, 4, 5];
  num.forEach((var n) => print(n));
  num.forEach((var element) {
    print(element);
  });
  // Using an anonymous function with `map`
  var doubledNumbers = num.map((number) => number * 2).toList();
  print("Doubled numbers: $doubledNumbers");


}


