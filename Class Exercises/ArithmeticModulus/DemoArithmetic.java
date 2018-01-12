/****************************
* Author: Alec Mills
* Demo how to use arithmetic
* operators & modulus
****************************/
public class DemoArithmetic {
    public static void main (String[] args) {
        int x = 24;
        int y = 8;
        int quotient = x / y;
        
        System.out.printf("%d divided by %d is %d.%n", x, y, quotient);
        // change x to 12
        x = 12;       
        System.out.printf("%d divided by %d is %d.%n", x, y, x / y);
        // modulus demo
        System.out.printf("remainder of %d / %d = %d%n", x, y, x % y);
    }
}