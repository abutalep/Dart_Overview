// This file explain
/* Inheritance  */

///Inheritance is a sharing of behaviour between two classes.
/// It allows you to define a class that extends the functionality of another class. The extend keyword is used for inheriting from parent class.
/// Whenever you use inheritance, it always create a is-a relation between the parent and child class like Student is a Person.
/// if parent class have constructor must make constructor of child class  explicitly invokes a constructor in superclass.

//Types Of Inheritance 
///Single Inheritance - In this type of inheritance, a class can inherit from only one class. In Dart, we can only extend one class at a time.
///Multilevel Inheritance - In this type of inheritance, a class can inherit from another class and that class can also inherit from another class. In Dart, we can extend a class from another class which is already extended from another class.
///Hierarchical Inheritance - In this type of inheritance, parent class is inherited by multiple subclasses. For example, the Car class can be inherited by the Toyota class and Honda class.
///Multiple Inheritance - In this type of inheritance, a class can inherit from multiple classes. Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.


//class person
class InheritancePerson {

  String? _name;
  String? _phone;
  bool? _isMarried;
  int? _age;

  String? get name =>_name;
  set name(String? name)=>_name=name;
  
  String? get phone =>_phone;
  set phone(String? phone)=>_phone=phone;

  bool? get isMarried =>_isMarried;
  set isMarried(bool? isMarrid)=>_isMarried=isMarrid;

  int? get age =>_age;
  set age(int? age){
    if (age!=null&&age>0) {
      _age=age;
    }
  }
  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}

//class student inheritance from person class
class Student extends InheritancePerson {

  String? universityName;
  String? universityAddress;

  void displayUniversityInfo() {
    print("University Name: $universityName");
    print("University Address: $universityAddress");
  }
  
}

void main(){
  Student student =Student();
  student.name="Ahmed AbuTalep";
  student.age=21;
  student.isMarried=false;
  student.phone="01015054960";
  student.universityName="Tanta Univerty";;
  student.universityAddress="Tanta";
  student.displayInfo();
  student.displayUniversityInfo();
  
}