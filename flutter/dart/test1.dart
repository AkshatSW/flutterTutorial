import 'dart:ffi';
import 'dart:io';

void main() {
  // print("Hello world!"); //how to print in dart
  // //both "" and '' works

  // stdout.write("Enter your name"); //another way to print in dart
  // var name = stdin.readLineSync(); //taking input in dart
  // print("Welcome, $name"); //using the a variable

  // var akshat = new Human(); //creating an class object
  // // we can also do it like this - var akshat = Human ();, new use karne ki jarurt nahi hai but it's better you do it

//Declaration of a variable
  int? a;
// ? laganae se we tell the program ki ki a ki value null bhi ho skti hai, otherwise error aa jayega agar kuch assign nai kara to
  print(a);

// assign
  a = 5; //initialisation
  print(a);

  BigInt longVavlue;
  longVavlue = BigInt.parse(
      '2398712947'); //how to store very big values, can also use double as well

  bool isHuman = true; //boolean values

// var ke sath datatype ki jarurat nahi hoti
  var name = 'akshat';
  var num = 10;

// inline declartion
  String name = "Akshat";

  print(name);
}

class Human {
  Human();
}
