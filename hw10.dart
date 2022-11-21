import 'dart:math';
import 'dart:io';





main (){
Shape ci = circle(radius: 2);
   print(ci.toString());
   print(ci.area());


Shape rect = rectangle(width: 5,height : 10 );
   print(rect.toString());
   print(rect.area());



triangle tri= triangle(shapeName: "triangle");
 print(tri.toString());
 print(tri.area());





 // robot 
 print("Hello I'm Ali and I'm robot");
   stdout.write("say anything to me : ");

   while (true) {
     String input = stdin.readLineSync()!;
     if (input.contains('?')) {
       print("Sure");
     } else if (input.isEmpty) {
       print("Okay. Be that way!");
     } else if (input == input.toUpperCase()) {
       print('Whoa, calm down!');
     } else {
       print("Anyway");

     }
   }
 



 }






// 1
abstract class Shape{

   String? shapeName;

   Shape({this.shapeName}){

   }

   area(){}

   @override
   String toString() {
     return "$shapeName";
   }

 }

//2 

class circle extends Shape{

   circle({super.shapeName}){}

   @override
   area({double? radius}) {
     // TODO: implement are
     return pi*pow(radius!, 2);
   }

 }



class rectangle extends Shape{

   rectangle({super.shapeName}){}

   @override
   area({double? width, height}) {
     // TODO: implement are
     return (width !* height);
   }

 }



 class triangle extends Shape{

   triangle({super.shapeName}){}

   @override
   area({double? width, height}) {
     // TODO: implement are
     return (width !* height);
   }

 }
