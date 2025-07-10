/* Write a dart function called parseInteger that takes a String as input and attempts to parse it into an integer.
If the parsing is successful,return the integer value .
If the parsing fails, return -1 .*/ 


import 'dart:io';

/****************************** Solution ******************************/

void main(){
  print("This checker of number \nEnter the number : ");
  String? num=stdin.readLineSync();
  double result =parseInteger(num);
  if (result==-1)
  {
    
  }else
  {
    
  }
}

double parseInteger (String? s){
  double? result;
  try{
    result = double.parse(s!);
    print("checker:successful $s is number .");
  }
  on FormatException{
    print("checker:Failed ! $s "+" is not number .\nError! format exception : can\'t act as input is not an integer .");
  }
  return result??-1;

}
