/*******************************************
 * Author: Alec Mills
 *
 * Demo Scanner
 * If the Scanner uses nextInt, next Double,
 * next (x) but no nextLine no special
 * treatment is necessary
 * If the Scanner uses only nextLine than
 * no special treatment is necessary
 * If the Scanner uses first nextLine and then
 * nextInt, next (x) no special treatment is
 * necessary
 *
 * However, if the Scanner uses nextInt,
 * next(x) followed by nextLine, then
 * clean-up is necessary
 ******************************************/

import java.util.Scanner;

public class DemoScanner {
    public static void main (String[] args) {
        Scanner input = new Scanner (System.in);
        
        part1(input);
        part2(input);
    } 

    private static void part1(Scanner input) {
        // part 1
        // read name then number .. works
        System.out.println("Part 1");
        System.out.print("Name: ");
        String name = input.nextLine();
        System.out.print("favorite Number: ");
        int number = input.nextInt();
        System.out.printf("%s's favorite number is %d.%n", name, number);
    }

    private static void part2(Scanner input) {
        System.out.println("Part 2");
        System.out.print("favorite Number: ");
        int number2 = input.nextInt();
        input.nextLine(); // clean up extra \
        System.out.print("Name: ");
        String name2 = input.nextLine();
        System.out.printf("%s's favorite number is %d.%n", name2, number2);
    }
}
