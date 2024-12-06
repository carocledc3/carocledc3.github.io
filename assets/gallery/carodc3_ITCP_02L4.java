// CARLOS ROMEO CLEMENTE DEL CASTILLO III
// UNIVERSITY OF THE CORDILLERAS, BSIT-1L
// CC2/Introduction to Computer Programming
// [30IP-02L4] Laboratory Challenge №4
// 26 SEPTEMBER 2024

import java.util.Scanner;

public class carodc3_ITCP_02L4 {

    static double[] applyDiscount(double amount) {

        // apologies po; this is a weird way to go around it; i made the discounting method return an array because i wanted to have the discount and the discounted amount accesable from the same (preferrably static) object so i don't have to manually instantiate things
    
        double discount = 0; // declare discount variable with default value of 0

        if (amount < 1000) {
            // if inputted amount is less than 0, do nothing
        } else if (amount >= 1000 && amount <= 5000) {
            discount = 0.05; // set discount to 5%
            amount *= (1 - discount); // subtract discount from amount
        } else if (amount > 5000 && amount <= 10000) {
            discount = 0.10; // set discount to 10%
            amount *= (1 - discount); // subtract discount from amount
        } else {
            discount = 0.15; // set discount to 15%
            amount *= (1 - discount); // subtract discount from amount
        }

        double[] results = {amount, discount * 100};
            // first element of the array == results[0] == final amount
            // second == results[1] == the discount (times 100 because it will be printed with the percent sign)
        return results; // return this array
    }

    @SuppressWarnings("resource") // so that vs code doesnt complain about not closing the scanner object (how does one close a scanner object?)
    public static void main(String[] args) {
        System.out.print("Enter total purchase amount: ₱"); // prompt user input
        Scanner amamam = new Scanner(System.in); // user inputs here, store in double in next line
        double banana = amamam.nextDouble(); // this throws an error if input is not a double!
        System.out.printf("Discount applied: %.0f%%\n", applyDiscount(banana)[1]); // print discount
        System.out.printf("Price after discount: ₱%,.2f\n", applyDiscount(banana)[0]); // print discounted price
        // number formatting reference https://docs.oracle.com/javase/tutorial/java/data/numberformat.html
    }
}