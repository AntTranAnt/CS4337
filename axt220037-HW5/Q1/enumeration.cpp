//Anthony Tran
//axt220037
//CS 4337-503


#include <iostream>

enum Drinks {Water, Soda, Juice};

using namespace std;

int main()
{
    Drinks drink = Soda;
    //1 casting to int
    int drinkInt = static_cast<int>(drink);
    cout << drinkInt << endl; //prints 1

    //2 casting to Drinks
    Drinks drink2 = static_cast<Drinks>(drinkInt);
    cout << drink2 << endl; //prints 1

    //3 cast value higher than 3 to Drinks
    drink2 = static_cast<Drinks>(100);
    cout << drink2 << endl; //prints 100

    //4 cast negative value to Drinks
    drink2 = static_cast<Drinks>(-2);
    cout << drink2 << endl; //prints -2

    //5 casting double to drinks
    drink2 = static_cast<Drinks>(2.0);
    cout << drink2 << endl; //prints 2

    //6 casting negative double to drinks UNEXPECTED
    drink2 = static_cast<Drinks>(-2.0);
    cout << drink2 << endl; //prints 0

    //7 adding 2 enumerates
    drink = Juice;
    drink2 = Water;
    cout << drink2 + drink << endl; //prints 2

    //8 subtracting 2 enumerates
    drink = Juice;
    drink2 = Water;
    cout << drink2 - drink << endl; //prints -2

    //9 comparing enumerate with value
    cout << (Water == 0) << endl; //prints 1

    //10 comparing enumerate with enumerate
    cout << (drink2 == drink) << endl; //prints 0

    return 0;
}
