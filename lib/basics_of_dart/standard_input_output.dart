// This file explain
//In Dart programming language, you can take standard input from the user through the console via the use of .readLineSync() function.
//To take input from the console you need to import a library named dart:io from libraries of Dart.
import 'dart:io';

void main() {
//Standard Output in Dart:
  print("Welcome to Dart! // printing using print statement");
  stdout.writeln("Welcome to Dart! // printing using stdout.writeln()");
  // string concatination
  int age = 21;
  String myName = "Ahmed";
  print("Name is " + myName+" ,age is " + age.toString());
  // string interpolation
  print("Name is ${myName} ,Age is ${age}");
  // Escape character
  print("\tName\tAli\nAge\t10\b11");
  print("c:\work\st\g2");
  //Carriage return  is an escape character that moves the cursor back to the beginning of the current line, without advancing to a new line.
  print("Hello World");
  print("Hello \rWorld");//World 
  print("Hell o\rWorld");//Worldo
  //verbatime string literal //Raw strings using r"" to avoid escape processing
  print(r"\tName\tAli\nAge\t10\b");
  print(r"c:\work\st\g2");

//Standard Input in Dart:
  print("Enter your name?");
  String? name = stdin.readLineSync();
  print("Hello, $name! \nWelcome to Dart!!");
  print("Enter your favourite number:");
  int? n = int.parse(stdin.readLineSync()!);
  print("Your favourite number is $n");
}
