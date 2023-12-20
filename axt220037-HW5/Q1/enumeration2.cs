/******************************************************************************

Anthony Tran
axt220037
CS 4337-503

*******************************************************************************/
using System;

enum Drinks {Water, Soda, Juice}

class enumeration2 {
  static void Main() {
    Drinks drink = Drinks.Soda;
    //1 casting to int
    int drinkInt = (int)(drink); 
    Console.WriteLine(drinkInt); //prints 1
    
    //2 casting to Drinks
    Drinks drink2 = (Drinks)(drinkInt); //prints Soda
    Console.WriteLine(drink2);
    
    //3 cast value higher than 3 to Drinks
    drink2 = (Drinks)(100); //prints 100
    Console.WriteLine(drink2);
    
    //4 cast negative value to Drinks
    drink2 = (Drinks)(-2); //prints -2
    Console.WriteLine(drink2);
    
    //5 casting double to drinks
    drink2 = (Drinks)(2.0); //prints Juice
    Console.WriteLine(drink2);
    
    //6 casting negative double to drinks UNEXPECTED
    drink2 = (Drinks)(-2.0); //prints -2
    Console.WriteLine(drink2);
    
    //7 adding 2 enumerates
    drink = Drinks.Juice;
    drink2 = Drinks.Water;
    //Console.WriteLine(drink2 + drink); //error because can't add enumerates
    
    //8 subtracting 2 enumerates
    drink = Drinks.Juice;
    drink2 = Drinks.Water; //prints -2
    Console.WriteLine(drink2 - drink);
    
    //9 comparing enumerate with value //prints True
    Console.WriteLine((Drinks.Water == 0));
    
    //10 comparing enumerate with enumerate //prints False
    Console.WriteLine((drink2 == drink));
  }
}