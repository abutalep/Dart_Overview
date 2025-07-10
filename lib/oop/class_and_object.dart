// This file explain
/*Introduction about oop (class and object) */
///Object-oriented programming (OOP) : is a programming method that uses objects and their interactions to design and program applications.
///Class : a class is a blueprint for creating objects. A class defines the  attributes (or properties) and behavior (or methods).  that an object will have. 
///Object : an object is a self-contained unit of code and data. Objects are created from templates called classes. An object is made up of properties(variables) and methods(functions). An object is an instance of a class. You can create multiple objects of the same class.

//Declaring Class 
/*
  class ClassName {
    properties or fields
    methods or functions
  }
*/
class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}

//Declaring Object
/*
ClassName objectName = ClassName();
*/



void main(){
  //Declaring object from Person class
  Person developer= Person();

  developer.displayInfo();
  developer.name="Ahmed AbuTalep";
  developer.age=21;
  developer.phone="01015054960";
  developer.isMarried=false;
  developer.displayInfo();

}