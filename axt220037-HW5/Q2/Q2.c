//Anthony Tran
//axt220037
//CS 4337-503

#include <stdio.h>

int main() {
    int testInt = 123;
    float testFloat = 12.345;

    //test implicit conversion
    float testPrint = testInt;
    printf("Implicit casting: %f\n", testPrint);
    //test explicit conversion
    int testPrint2 = (int)testFloat;
    printf("Explicit casting: %d\n", testPrint2);
    //test narrowing type conversion
    int testPrint3 = (int) testFloat;
    printf("Narrowing from float %f to int %d\n", testFloat, testPrint3);
    //test widening type conversion
    float testPrint4 = (float) testInt;
    printf("Widening from int %d to float %f\n", testInt, testPrint4);
    return 0;
}