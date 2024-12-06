// CARLOS ROMEO CLEMENTE DEL CASTILLO III
// UNIVERSITY OF THE CORDILLERAS, BSIT-1L
// CC2/Introduction to Computer Programming
// [30IP-01L1] Laboratory Challenge №1
// 9 SEPTEMBER 2024
// All external code sources have been cited in comments.

public class carodc3_ITCP_01L1 {
    // thanks https://stackoverflow.com/questions/5762491/how-to-print-color-in-console-using-system-out-println
    // text colouring; only works on linux according to source
        public static String ANSI_RESET = "\u001B[0m";
        public static String ANSI_BLACK = "\u001B[30m";
        public static String ANSI_RED = "\u001B[31m";
        public static String ANSI_GREEN = "\u001B[32m";
        public static String ANSI_YELLOW = "\u001B[33m";
        public static String ANSI_BLUE = "\u001B[34m";
        public static String ANSI_PURPLE = "\u001B[35m";
        public static String ANSI_CYAN = "\u001B[36m";
        public static String ANSI_WHITE = "\u001B[37m";
        public static String LINE = "--------------------------------------------------------";
    public static void main(String[] args) {
        System.out.println(ANSI_BLUE + "Aspire Stationery Co.\n" + ANSI_CYAN + "720 Via Sáint-Stivan\n" + ANSI_RESET + "Bluebanks, Medleshire, Sevdenia 2456-10");
        System.out.println();
        System.out.println("Invoice, Date: " + ANSI_CYAN + "9 SEP 2037" + ANSI_RESET);
        System.out.println("");
        System.out.println(ANSI_RED + "Item \t \t \t Quantity \tTotal Price" + ANSI_RESET);
        System.out.println(LINE);
        System.out.println("Mongol Pencil, No.2 \t 560 \t \t1,960 kr.");
        System.out.println("Yellow Pad \t \t 200 \t \t1,034 kr.");
        System.out.println("Gel Pen, Black \t \t 2,000 \t \t8,420 kr.");
        System.out.println(LINE);
        System.out.println(ANSI_YELLOW + "Total Amount Due: \t \t \t11,414 kr." + ANSI_RESET);
        System.out.println(ANSI_CYAN + "Payment Due Date: \t \t \t" + "9 OCT 2037" + ANSI_RESET);
        System.out.println(LINE);
        System.out.println("Thank you for choosing "+ ANSI_BLUE +  "Aspire Stationery Co."+ ANSI_RESET + "!");
    }

    
}