/*   



*interview questions:

1- what is the importance of SOLID?
2- what does the word SOLID stand for?

3- SOLID principles

S ---> Single Responsiibility
O ---> Open-Closed system
L ---> Liskov Substitution
I ---> Interface segregation
D ---> Dependancy inversion



1- Single Responsiibility: 

- A class(unit) should be responsible for only one thing ---> so the class
 shlould change for only one reasone;

*bad practice*

 class Result {
 final ResultObject result;
 Result(this.result)

 checkResult(result){
 if()for()
 reture;
 }

 future sendResultForApi(result) async{
 await;
 }

  bool isWrongPassword(password){

  true or false;
  }
 }

 good practice (separation of concerns)

 class Result {}

 class Validations{}


 2- Open-Closed
 You should be able to add new feature without modifying the existing code;
 An entity should be open for extension but closed for modification.


class Rectangle {
final width;
final height;
Rectangle(this...)
}


class Circle {
final radius;
Rectangle(this...)
}

class Square  {
final length;
Square(this...)
}

class Triangle  {
final base;
final height;
Triangle(this...)
}

AreaCalculation{

  double calculateArea(dynamic shape){
  
    if(shape is Rectangle ){
    
    return shape.width * shape.height;
    } else if(shape is Square ){
    
    return shape.length * shape.length } else if(shape is Triangle){
    
    return 0.5 * shape.base * shape.height;
    }
    
    
    
     else {
    
    return (shape as Circle).radius *(shape as Circle).radius * 3.14
    }
  
  }

}


abstract class Shape {

double calculateArea();
}

class Square extend Shape{
final length;
Square(this...)
}

@override
calculateArea(){
return  shape.length * 2;
}

}

class Circle extend Shape{
final radius;
Circle(this...)
}

@override
calculateArea(){
return  radius *2 * 3.14;
}

}



class Trianfle extend Shape{
final base;
final height;
Trianfle(this...)
}

@override
calculateArea(){
return  0.5 * base * hight;
}

class AreaCalc{

double calculate(Shape shape){
return shape.calculateArea();
}
}


3- Liskove substitution:
Subclasses should be substiutible / replacble for the classes they where deriverd from.

ClassB extens ClassA ---- ClassA extends ClassB ----> no crach/ break 


wrong practice:

abstract class plane {
startEngine();
}

class AirPlane extends plane {

@override
startEngine(){

}

class PaperPlane extends plane {

@override
startEngine(){

}

///////// good practice //////////


abstract class Plane {
  fly();
}

abstract class RealPlane extends Plane {
  startEngine();
}

abstract class FakePlane extends Plane {}

class AirPlane extends RealPlane {
  @override
  startEngine() {}

  @override
  fly() {}
}

class PaperPlane extends FakePlane {
  @override
  fly() {}
}


4- Interface Segregation
- the client(developer) does not have to implement a behavior he doesnt need;
- you should (developer) create small interfaces with minimal methods


bad practise
abstract class Worker {
  work();
  sleep();
}

class Human implements Worker {
  @override
  sleep() {
    // TODO: implement sleep
    throw UnimplementedError();
  }

  @override
  work() {
    // TODO: implement work
    throw UnimplementedError();
  }
  
}

class Robot implements Worker{
  @override
  sleep() {
    // TODO: implement sleep
    throw UnimplementedError();
  }

  @override
  work() {
    // TODO: implement work
    throw UnimplementedError();
  }
  
}

good practise


interface class Worker {
  work(){}
}

interface class Sleeper {
  sleep(){}
}

class Human implements Worker,Sleeper {
  @override
  sleep() {
    // TODO: implement sleep
    throw UnimplementedError();
  }

  @override
  work() {
    // TODO: implement work
    throw UnimplementedError();
  }
  
}

class Robot implements Worker {
  @override
  work() {
    // TODO: implement work
    throw UnimplementedError();
  }
 
}


5- Dependancy Inversion
- entities must depend on abstraction not on concration 
- High level modules mustn't depend on low level modules, both of the depends on abstraction.

/////// bad practise///////




*/

// class PaymentViaCreditCard {
//   paymenet() {}
// }

// class PaymentViaDebitCard {
//   paymenet() {}
// }

// class PaymentViaCash {
//   paymenet() {}
// }

// class PaymentViaCopons {
//   paymenet() {}
// }

// class CheckOut {
//   checkoutWithCreditCard(PaymentViaCreditCard paymentMethod) {
//     paymentMethod.paymenet();
//   }

//   checkoutWithDebitCard(PaymentViaCreditCard paymentMethod) {
//     paymentMethod.paymenet();
//   }

//   checkoutWithCash(PaymentViaCreditCard paymentMethod) {
//     paymentMethod.paymenet();
//   }

//   checkoutWithcopons(PaymentViaCreditCard paymentMethod) {
//     paymentMethod.paymenet();
//   }
// }

abstract class Payment {
  payment();
}

class PaymentViaCreditCard extends Payment {
  @override
  payment() {
    // TODO: implement payment
    throw UnimplementedError();
  }
}

class PaymentViaDebitCard extends Payment {
  @override
  payment() {
    // TODO: implement payment
    throw UnimplementedError();
  }
}

class PaymentViaCash extends Payment {
  @override
  payment() {
    // TODO: implement payment
    throw UnimplementedError();
  }
}

class PaymentViaCopons extends Payment {
  @override
  payment() {
    // TODO: implement payment
    throw UnimplementedError();
  }
}

class CheckOut {
  checkOut(Payment paymentMethod) {
    paymentMethod.payment();
  }
}

class NewRegisteredUsers {
  NewRegisteredUsers() {
    numberOfAllRegisteredUsers += 1;
  }

  static int numberOfAllRegisteredUsers = 0;
  String? email;
  int? phone;
}
