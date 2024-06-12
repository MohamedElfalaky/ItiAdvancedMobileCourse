/*

 OOP 

1- Abstraction : 
A class that can not be inistantiated.
  mainly used to be inhirit from.

2- Inherhitance:
To inherit parameters and methods of the parent/Super class.


3- Encapsulation.
Grouping related variables and functions and hide them from outside to prevent unintended outside interactions.

_ private


4- Polymorphysm

  a- override : to inherite a member and change its content ;
  -- abstract finction;

  b- overload: to give function diffrent parameters and retern different types









  // interview question :

  -- what is the main goal of using arctictural patterns? ()
  -- what are arctictural patterns? clean archticture?
  -- what are the main layers in clean arch.. ?

  1- what is OOP?
  2- what is the purpose of OOP?
  3- what are the main 4 concepts of OOP?
  4- what is (abstraction- inheritance ...)?
  5- what is setter and getter and why we use them?
  6- why i use setter to modify private member however its private? 
  7- what is override and overload,, and how to use overload in dart?
  8- what is super keyword?
  9- what is abstract finction?
  10 what inistance vaiable?
  11- what is static variable and what it used for?
  12- each inistance has a static variable ???  false

  13- What are the differances between extends (inherintance--> abstract) and impelements (for interface)
  a- extends can access Super ,, however implements can not.
  b- in extends,, the abstract function is only the concret implementation,, but in implements,, all members are concret implementation.
  c- extends inherits from one class only, however, implements can inhirit from multible classes.
  d- extends --> abstract class ,,, implements ----> interface class

  14- what is mixin?
  is a class that can be instantiaed, extended from, implemented from, and mix in.
  (Animation SingleTickerProviderStateMixin)

  15- what is interface class
  16 - what is sealed class
  17- what is final class
  18- what is base class



  19- what is the diff between
   var - final  - const  ||   static - late

   1- var: a varialbe that can be initialized any time, used when we need the variable to be changed (counter)
   var name = 'mohamed'
   String name = 'mohamed';

   2- final: a varialbe that is initialized one time only in run time, and may not be initialized, and take its value in run time
   - used with variables that initialezed from constructor.

   3- const: a varialbe that is must be initialized,, and its initialized one time only in compile time





*/

import 'package:flutter/material.dart';

abstract class Person {
  Person() {
    print('object');
  }

  // final String? _name;
  static String kind = 'human';

  String? _name;
  int? _age;

  get getPersonAge {
    _name = 'mohamed';
    _name = 'ali';
    _name = 'ahmed';
    return _age;
  }

  set setPersonAge(int addedAge) {
    _age = addedAge + 1;
  }

  String getPersonLocation();
}

class Student extends Person {
  Student() {
    print(getPersonLocation());
  }

  @override
  getPersonLocation() {
    return 'hello world';
  }

  dynamic calculatePrice({int? price, String? msg}) {
    super._age;

    if (price == null) {
      return msg;
    } else {
      return price;
    }
  }
}

final class NewsDetailsScreen extends StatefulWidget {
  final String newsDetails;
  NewsDetailsScreen(this.newsDetails);

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  // late int price;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // activity = "";
    // newsDetails = 'newtext';
    return Container();
  }
}

// const String activity;

