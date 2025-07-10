// This file explain
/* Polymorphism & Overriding */
///Polymorphism : refers to the ability of objects of different classes to be treated as objects of a common superclass. It allows you to write code that can work with objects of different types, as long as they share a common interface or superclass.
///Poly means many and morph means forms. Polymorphism is the ability of an object to take on many forms. As humans, we have the ability to take on many forms.
///We can be a student, a teacher, a parent, a friend, and so on. Similarly, in object-oriented programming, polymorphism is the ability of an object to take on many forms.

//Overriding
///Method overriding is a technique in which you can create a method in the child class that has the same name as the method in the parent class.
///The method in the child class overrides the method in the parent class.

class Employee{
  void salary(){
    print("Employee salary is \$1000.");
  }
}

class Manager extends Employee{
  @override
  void salary(){
    print("Manager salary is \$2000.");
  }
  void test(){
    print("test");
  }
}

class Developer extends Employee{
  @override
  void salary(){
    print("Developer salary is \$3000.");
  }
}

void main(){
  Manager manager=Manager();
  Developer developer=Developer();
  manager.salary();
  manager.test();
  developer.salary();
  // make object of manager with pointer of type employee
  Employee managerTwo=Manager();
  managerTwo.salary(); // the salary is called from manager class because this method happened to her ovveriding in manager class
  // managerTwo.test(); //error because the reference class (Employee) don't have this method
}