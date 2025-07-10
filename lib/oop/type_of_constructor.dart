// This file explain
/* How to create constructor and type of constructors ( Default Constructor , parameterized constructor or(Generative constructor) , Named constructor , Constant Constructor , Redirecting constructor , Factory constructor ) */
///A constructor is a special method used to initialize an object. It is called automatically when an object is created, and it can be used to set the initial values for the object’s properties.
///The constructor’s name should be the same as the class name.
///Constructor doesn’t have any return type.


//Parameterized Constructor
///Parameterized constructor is used to initialize the instance variables of the class. 
///Parameterized constructor is the constructor that takes parameters. It is used to pass the values to the constructor at the time of object creation.

//parameterized constructor for person class
class Person{
  String? name;
  int? age;
  String? subject;
  double? salary;

  Person(this.name, this.age, this.subject, this.salary);

  void display(){
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

//Default Constructor
///The constructor which is automatically created by the dart compiler if you don’t create a constructor is called a default constructor.
///A default constructor has no parameters. A default constructor is declared using the class name.
class Default {
  int? x;
  int? y;
  Default();
}

//Named Constructor 
///Use a named constructor to implement multiple constructors for a class or to provide extra clarity
/// we can create multiple constructors with the same name. But in Dart, this is not possible. Well, there is a way. We can create multiple constructors with the same name using named constructors.
const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y);

  // Named constructor
  Point.origin() : x = xOrigin, y = yOrigin;
}

//Constant Constructor
///Is a constructor that creates a constant object. A constant object is an object whose value cannot be changed. A constant constructor is declared using the keyword const.
///Class that have const constructor All properties of the class must be final. and const constructor does not have any body.
class ConstantConstructor {
  final int x;
  final int y;

  const ConstantConstructor(this.x, this.y);
}

//Redirecting constructor 
///A constructor might redirect to another constructor in the same class.
///A redirecting constructor has an empty body. The constructor uses this instead of the class name after a colon (:)
class RedirectingConstructor {
  double x, y;
  // The main constructor for this class.
  RedirectingConstructor(this.x, this.y);
  // Delegates to the main constructor.
  RedirectingConstructor.alongXAxis(double x) : this(x, 0);
}

//Factory constructor
///special type of constructor that doesn't always create a new instance of a class. Instead, it can return an existing instance or a subclass instance. 
///This is particularly useful for implementing design patterns like singletons or caching.
class Singleton {
  static final Singleton _instance = Singleton._internal();
  // Private named constructor
  Singleton._internal();
  // Factory constructor
  factory Singleton() {
    return _instance;
  }
}


