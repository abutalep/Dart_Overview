// This file explain
/* Encapsulation and how to hide data and use getter and setter methods to access and update the value of private property.*/
///Encapsulation means hiding data within a library, preventing it from outside factors. It helps you control your program and prevent it from becoming too complicated.
///Getter methods are used to access the value of private property. Setter methods are used to update the value of private property.

class EncapsulationPerson {
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

void main(){
    EncapsulationPerson person=EncapsulationPerson();
    person.age=0;
    print(person.age);
    person.age=21;
    print(person.age);
}
