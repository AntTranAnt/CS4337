//Anthony Tran
//axt220037
//CS 4337-503

//program to add 2 input numbers. no proper input validation (CWE-20) because doesn't check if inputs are integers

import java.util.Scanner;
public class CWE_20 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Program to add 2 input numbers together.");
        System.out.print("Enter first number: ");
        int input1 = input.nextInt();

        System.out.print("Enter second number: ");
        int input2 = input.nextInt();

        System.out.println(input1 + input2);

        input.close();
    }
}