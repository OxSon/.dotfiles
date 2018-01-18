/****************************************
 * Author: Alec Mills
 *
 * Demo formatted output:
 *  %-7s : column of width 7 left aligned
 *  %2d : column of width 2 right aligned
 *  %.1f : one digit after decimal point
 ***************************************/

public class DemoFormatting {
    public static void main (String[] args) {
        String name1 = "Joe";
        String name2 = "Susan";
        int age1 = 15;
        int age2 = 9;
        double gpa1 = 3.0;
        double gpa2 = 3.8;

        System.out.printf("%-7s %2d %.1f%n", name1, age1, gpa1);
        System.out.printf("%-7s %2d %.1f%n", name2, age2, gpa2);
    }
}
