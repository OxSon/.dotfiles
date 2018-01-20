/*********************************
 * Author: Alec Mills
 *
 * Lab: Marbles
 * Date: Jan 18 '18
 ********************************/

import java.util.Scanner;

public class LabMarbles {
    public static void main (String[] args) {
        Scanner input = new Scanner(System.in);

        String color1 = getColor(input);
        int number1 = getNum(input, color1);

        input.nextLine(); // clean up carriage return
        String color2 = getColor(input);
        int number2 = getNum(input, color1);

        input.nextLine(); // clean up carriage return
        String color3 = getColor(input);
        int number3 = getNum(input, color1);

        System.out.printf("%n%-9s %-17s%n", "Color:", "Number of Marbles:");
        System.out.printf("%-9s %-17s%n", "---------", "-----------------");
        System.out.printf("%-9s %-17d%n", color1, number1);
        System.out.printf("%-9s %-17d%n", color2, number2);
        System.out.printf("%-9s %-17d%n", color3, number3);
    }

    private static String  getColor(Scanner input) {
        System.out.print("Color: ");
        String color = input.nextLine();
        return color;
    }

    private static int getNum(Scanner input, String color) {
        System.out.printf("Number of %s marbles: ", color);
        int number = input.nextInt();
        return number;
    }
}
