// This file explain
/// Data types of the variables 
/// some Built-in Methods  for datatype(int ,double ,String ,bool ,list ,map ,datetime) in Dart
/// show Common Collection Methods
/// Variable in dart: variable can consist of capital letters ,small letters ,(dollar sign) $ and (the underscore) _  and numbers but Don't start with numbers.

// Data type:
///  1-Integer=> (int - BigInt) it is used to store integers.
///  2-Double=> it is used to store decimal numbers.
///  3-Num=> it is used to store any type of numbers.
///  4-String=> it is used to store text.
///  5-Booleans=> it is used to store true or false.
///  6-Dynamic=> it is used to store an item of unknown type.
///  7-Var=> it is used to store an item and its type will be determined automatically.But when you change the first value to another value the type of new value must be the same type as old value .

// keywords:
/// Const => Used when the value is known at compile time and will never change.It creates a compile-time constant.const variables are implicitly final.
/// Final => Used when a variable is set only once.Its value can be assigned at runtime.Once set, the value can't be changed.

// Collection data type :
///  1-Lists=> it is used to create a list and store some items within it.
///  2-Set=> it is used to create a collection that store some unique items within it.Unlike a list, a set doesn’t allow duplicates. Also, a set doesn’t maintain the order of elements. Typically, a set is faster than a list, especially when working with large elements.
///  3-Maps=> it is used to create a collection that store some elements and the element has a unique key and value .

/// Records :are an anonymous ,immutable ,aggregate type .
/// Records like other collection types,they let you bundle multiple objects into a single object.
/// Records unlike other collection types,records are fixed sized ,heterogeneous ,and typed.


void main() {
  //Examples datatype
  int num1 = 10;
  double num_d = 10.5;
  num nu = 10;
  String str = "AbuTalep";
  bool bol = true;
  dynamic dy = "rgvf";
  var va = "string";
  print("integer=$num1");
  print("double=$num_d");
  print("string=$str");
  print("boolean=$bol");
  print("dynamic=$dy");
  print("var=$va");
  print("num=$nu");

  //Examples collection datatype
  List<int> ls = [10, 1, 2004];
  print(ls[0]);
  Set<String> se = {"Ahmed", "Mohamed", "AbuTalep"};
  print(se);
  Map<int, String> ma = {1: "Ahmed", 2: "Mohamed"};
  print(ma[1]);

  //Examples Records
  //Record with named fields
  var Degree = (Math: 20, Seince: 19); //another syntax => ({int Math, int Seince}) Degree = (Math: 20, Seince: 19);
  print(Degree);
  //Accessing fields by name
  print("Math : ${Degree.Math}");

  //Record with position fields
  var Person = ("Ahmed", 21); //another syntax => (String, int) Person = ("Ahmed", 21); 
  print(Person);
  //Accessing fields by position
  print("Name:${Person.$1} ,Age:${Person.$2}");

  //Destructuring: Extracting fields int variables
  var (Name, Age) = Person;
  print("Name:$Name,Age:$Age");

  //Use record as a return type of function
  (int , int) swap((int , int) record) {
    var (a, b) = record;
    return (b, a);
  }
  print(swap((1, 2)));

  // some Built-in Methods  for datatype(int ,double ,String .list ,map ,datetime) in Dart
  // 1. String Methods
  String message = "   Hello,Dart!   ";
  print("Welcome to String Methods");
  // trim: Removes leading and trailing whitespace
  print(message.trim());        // Removes leading/trailing spaces → "Hello Dart!"
  print(message.trimLeft());    // Removes leading/trailing spaces in left → "Hello,Dart!   "
  print(message.trimRight());   // Removes leading/trailing spaces in right → "   Hello,Dart!"
  // startsWith: Checks if the string starts with a substring
  print(message.startsWith("Hello")); // false
  // endsWith: Checks if the string ends with a substring
  print(message.endsWith("Dart!")); // false
  // toLowerCase: Converts the string to lowercase
  print(message.toLowerCase()); // "   hello dart!   "
  // toUpperCase: Converts the string to uppercase
  print(message.toUpperCase()); // "   HELLO DART!   "
  // contains: Checks if the string contains a substring
  print(message.contains("Dart")); // true
  // replaceAll: Replaces all occurrences of a substring with another
  print(message.replaceAll("Dart", "World")); // "   Hello World!   "
  // replaceFirst: Replaces the first occurrence of a substring
  print(message.replaceFirst("Hello", "A")); // "   A,Dart!   "
  // replaceRange: Replaces a range of characters with a substring
  print(message.replaceRange(3,8, "sss")); // "   sss,Dart!   "
  // allMatches: Finds all matches of a pattern in the string
  print("All matches of '   Hello,Dart!   ': ${message.allMatches('   Hello,Dart!      Hello,Dart!      Hello,Dart!   ').length}"); // 3
  // substring: Extracts a portion of the string
  print(message.substring(3, 8)); // "Hello"
  print(message.length); // 17  #index from 0 to 16
  //  isEmpty: Checks if the string is empty , isNotEmpty: Checks if the string is not empty
  print(message.isEmpty); // false
  print(message.isNotEmpty); // true
  // indexOf: Returns the index of the first occurrence of a substring
  print(message.indexOf("l")); // 5
  // lastIndexOf: Returns the index of the last occurrence of a substring
  print(message.lastIndexOf("l")); // 6
  // codeUnitAt: Returns the UTF-16 code unit at a specific index
  print("Code unit at index 1: ${message.codeUnitAt(1)}"); // Code unit at index 1: 32
  // runes: Returns an iterable of Unicode code points
  print("Runes (Unicode code points): ${message.runes.toList()}"); // Runes (Unicode code points): [32, 32, 32, 72, 101, 108, 108, 111, 44, 68, 97, 114, 116, 33, 32, 32, 32]
  // split: Splits the string into a list of substrings based on a delimiter
  var words =message.split(","); //Splits the string at matches of [pattern] and returns a list of substrings.
  words.forEach(print); 
  // length: Returns the length of the string
  print(words.length); // 2
  print(words[0].length); // 8
  print(words[1].length); // 8
  //  compareTo: Compares two strings lexicographically
  // 0  when the strings are equal.
  // 1  when the first string is greater than the second
  // -1  when the first string is smaller than the second
  print(words[0].compareTo(words[1])); // -1  
  // padLeft: Pads the string on the left with a specified character
  print(message.padLeft(30, '*')); // *************   Hello,Dart!
  // padRight: Pads the string on the right with a specified character
  print(message.padRight(30, '*')); //    Hello,Dart!   *************


  // 2. Number Methods
  print("Welcome to number Methods");
  int n =-2;
  int n1 =8;
  double pi = 3.14159;

  // toInt: Converts the double to a integer
  print(pi.toInt());       // 3
  // toString: Converts the number to a string
  print(n.toString());     // "-2"
  print(pi.toString());    // "3.14159"
  // round: Rounds the double to the nearest integer
  print(pi.round());       // 3
  // floor: Rounds the double down to the nearest integer
  print(pi.floor());       // 3
  // ceil: Rounds the double up to the nearest integer
  print(pi.ceil());        // 4
  // roundToDouble: Rounds the double to the nearest double value
  print("Round $pi to double: ${pi.roundToDouble()}"); // Round 3.14159 to double: 3.0
  // floorToDouble: Rounds the double down to the nearest double value
  print("Floor $pi to double: ${pi.floorToDouble()}"); // Round 3.14159 to double: 3.0
  // ceilToDouble: Rounds the double up to the nearest double value
  print("Ceil $pi to double: ${pi.ceilToDouble()}"); // Ceil 3.14159 to double: 4.0
  // truncateToDouble: Truncates the double to a double value
  print("Truncate $pi to double: ${pi.truncateToDouble()}"); // Truncate 3.14159 to double: 3.0
  // isFinite: Checks if the number is finite (always true for integers)
  print(pi.isFinite);   //true
  print(n.isFinite);    //true
  // isInfinite: Checks if the number is infinite (always false for integers)
  print(pi.isInfinite); //false
  print(n.isInfinite);  //false
  // isNegative: Checks if the number is negative
  print(pi.isNegative); //false  #Whether this number is negative.
  print(n.isNegative);  //true
  // isNaN: Checks if the number is NaN (always false for integers)
  print(pi.isNaN);      //false  #Whether this number is a Not-a-Number value.
  print(n.isNaN);       //false
  // abs: Returns the absolute value of the number
  print(pi.abs()); // 3.14159
  print(n.abs()); // 2
  // toRadixString: Converts the integer to a string in a given radix (base)
  print("$n in binary (base 2): ${n.toRadixString(2)}"); // -2 in binary (base 2): -10
  print("   $n in hexadecimal (base 16): ${n.toRadixString(16)}"); //   -2 in hexadecimal (base 16): -2
  // compareTo: Compares two numbers
  print(n.compareTo(pi)); // -1  becuase n < pi
  // isEven: Checks if the integer is even
  print(n.isEven); // true
  // isOdd: Checks if the integer is odd
  print(n.isOdd); // false
  // sign: Returns the sign of the number 
  print("Sign of $n: ${n.sign}"); // Sign of -2: -1  # Returns the sign of the integer (-1, 0, or 1)
  print("Sign of $pi: ${pi.sign}"); // Sign of 3.14159: 1.0 # Returns the sign of the double (-1.0, 0.0, or 1.0)
  // bitLength: Returns the number of bits required to represent the integer
  print("Bit length of $n: ${n.bitLength}"); // Bit length of -2: 1
  // toUnsigned: Converts the integer to an unsigned integer of a given bit length
  print("$n as an unsigned 8-bit integer: ${n.toUnsigned(8)}"); // -2 as an unsigned 8-bit integer: 254
  // toSigned: Converts the integer to a signed integer of a given bit length
  print("$n as a signed 8-bit integer: ${n.toSigned(8)}"); // -2 as a signed 8-bit integer: -2
  // gcd: Returns the greatest common divisor of two integers
  print("GCD of $n and $n1: ${n.gcd(n1)}"); // GCD of -2 and 8: 2
  // modInverse: Returns the modular inverse of the integer
  try {
    print("Modular inverse of $n1 modulo 17: ${n1.modInverse(17)}"); // Modular inverse of 8 modulo 17: 15
  } catch (e) {
    print(
        "Modular inverse of $n1 modulo 17: Not possible (${e.toString()})");
  }
  // modPow: Returns the modular exponentiation of the integer
  print("$n1^3 modulo 17: ${n1.modPow(3, 17)}"); // 8^3 modulo 17: 2
  // clamp: Clamps the number to a given range
  print("Clamp $n between 10 and 20: ${n.clamp(10, 20)}"); // Clamp -2 between 10 and 20: 10 # Clamps the integer to a given range
  print("Clamp $pi between 10.0 and 20.0: ${pi.clamp(10.0, 20.0)}"); // Clamp 3.14159 between 10.0 and 20.0: 10.0 # Clamps the double to a given range
  // truncate: Truncates the number to an integer
  print("Truncate $n: ${n.truncate()}"); // Truncate -2: -2  #Returns the integer itself (since it's already an integer)
  print("Truncate $pi: ${pi.truncate()}"); // Truncate 3.14159: 3
  // toDouble: Converts the integer to a double
  print("$n as a double: ${n.toDouble()}"); // -2 as a double: -2.0
  // remainder: Returns the remainder of the division
  print("Remainder of $pi divided by 3: ${pi.remainder(3)}"); // Remainder of 3.14159 divided by 3: 0.14158999999999988 # Returns the remainder of the division by another double
  print("Remainder of $n divided by 3: ${n.remainder(3)}"); // Remainder of -2 divided by 3: -2 # Returns the remainder of the division by another integer
  // toStringAsFixed: Converts the double to a string with fixed decimal places
  print("$pi with 2 decimal places: ${pi.toStringAsFixed(2)}"); // 3.14159 with 2 decimal places: 3.14
  // toStringAsExponential: Converts the double to a string in exponential notation
  print("$pi in exponential notation: ${pi.toStringAsExponential(2)}"); // 3.14159 in exponential notation: 3.14e+0
  // toStringAsPrecision: Converts the double to a string with a given precision
  print("$pi with precision 4: ${pi.toStringAsPrecision(4)}"); // 3.14159 with precision 4: 3.142

  // Utility: int.parse() & double.parse()
  String age = "25";
  int parsedAge = int.parse(age);  // Convert to int
  print(parsedAge + 5);            // 30

  String price = "19.99";
  double parsedPrice = double.parse(price); // Convert to double
  print(parsedPrice + 0.01);       // 20.0

  // 3.Booleans Methods
  print("Welcome to Boolean Methods");
  bool isTrue = true;
  bool isFalse = false;

  // toString: Converts the boolean to a string
  print("$isTrue as a string: ${isTrue.toString()}");
  // hashCode: Returns the hash code of the boolean
  print("Hash code of $isTrue: ${isTrue.hashCode}"); // Hash code of true: 1231
  // runtimeType: Returns the runtime type of the boolean
  print("Runtime type of $isTrue: ${isTrue.runtimeType}"); // Runtime type of true: bool
  // & (AND operator): Performs a logical AND operation
  print("$isTrue AND $isFalse: ${isTrue & isFalse}"); // true AND false: false
  // | (OR operator): Performs a logical OR operation
  print("$isTrue OR $isFalse: ${isTrue | isFalse}"); // true OR false: true
  // ^ (XOR operator): Performs a logical XOR operation
  print("$isTrue XOR $isFalse: ${isTrue ^ isFalse}"); // true XOR false: true
  // ! (NOT operator): Negates the boolean
  print("NOT $isTrue: ${!isTrue}"); // NOT true: false

  // 4. DateTime Methods
  print("Welcome to DateTime Methods");
  DateTime now = DateTime.now();
  print(now);                      // Current date & time
  print(now.year);                 // Get year
  print(now.add(Duration(days: 5))); // Add 5 days
  print(now.difference(DateTime(2024, 1, 1)).inDays); // Days since 1 Jan 2024


  
  // 5. List Methods
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Welcome List Methods");

  print(numbers.reversed.toList()); // [5, 4, 3, 2, 1]
  print(numbers.first);             // 1
  print(numbers.last);              // 5
  print(numbers.contains(3));       // true
  numbers.add(6);                   // [1, 2, 3, 4, 5, 6]
  numbers.remove(2);                // [1, 3, 4, 5, 6]
  numbers.sort();                   // [1, 3, 4, 5, 6]
  print(numbers.indexOf(4));        // 2

  // 6. Map Methods
  print("Welcome to Map Methods");
  Map<String, int> scores = {'Math': 90, 'Science': 85};

  print(scores.containsKey('Math')); // true
  print(scores.containsValue(100));  // false
  scores['English'] = 88;            // Add new key-value
  scores.remove('Science');          // Remove entry
  print(scores.keys);                // (Math, English)
  print(scores.values);              // (90, 88)


// show Common Collection Methods

// 1. isEmpty() or isNotEmpty
// Use isEmpty or isNotEmpty to check whether a list, set, or map has items or not.
    // Declaring an empty list of coffees
    var coffees = [];
    
    // Declaring a list of teas with some values
    var teas = ['green', 'black', 'chamomile', 'earl grey'];
    
    // Checking if the 'coffees' list is empty and printing the result
    print(coffees.isEmpty); // Output: true (since the list is empty)
    
    // Checking if the 'teas' list is not empty and printing the result
    print(teas.isNotEmpty); // Output: true (since the list contains elements)

// 2. forEach()
// To apply a function to each item in a list, set, or map, you can use forEach().
    
    // Using the map() function to convert each tea name to uppercase
    var loudTeas = teas.map((tea) => tea.toUpperCase());
    // Iterating over the modified list and printing each tea name
    loudTeas.forEach(print); // Output: GREEN, BLACK, CHAMOMILE, EARL GREY
  
// 3.where()
// Use Iterable’s where() method to get all the items that match a condition.
  var bigNames=teas.where((String tea)=>tea.length>5);
  bigNames.forEach(print);
// Use Iterable’s any() and every() methods to check whether some or all items match a condition.
    // Function to check if a tea is decaffeinated
    // Chamomile is the only decaffeinated tea in this list.
    bool isDecaffeinated(String teaName) => teaName == 'chamomile';
    // Using any() to check if at least one tea in the list is decaffeinated.
    print(teas.any(isDecaffeinated)); // Output: true (since chamomile is present)
    
    // Using every() to check if all teas in the list are decaffeinated.
    print(!teas.every(isDecaffeinated)); // Output: true (since not all teas are chamomile)

}
/********************************/
