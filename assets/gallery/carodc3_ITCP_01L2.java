import java.util.Scanner;

// CARLOS ROMEO CLEMENTE DEL CASTILLO III
// UNIVERSITY OF THE CORDILLERAS, BSIT-1L
// CC2/Introduction to Computer Programming
// [30IP-01L2] Laboratory Challenge №2
// 16 SEPTEMBER 2024
// CODED RIGHT HERE IN M303

public class carodc3_ITCP_01L2 {
    public static String hr = "-----------------------------------------------";
    public static void phr() {System.out.println(hr);}
    @SuppressWarnings("resource")
    public static void main(String[] args) {
        // TITLE
        System.out.println("Garden Dimensions Calculator");
        phr();
        // ENTER LENGTH
        System.out.print("Enter garden length in metres: ");
        Scanner readLength = new Scanner(System.in);
        int length = readLength.nextInt(); 
        // ENTER WIDTH
        System.out.print("Enter garden width in metres: ");
        Scanner readWidth = new Scanner(System.in);
        int width = readWidth.nextInt(); 

        phr();

        int gardenArea = length * width; // 60
        int gardenPerimeter = 2 * (length + width);
        
        System.out.println("Garden length: " + length + " metres");
        System.out.println("Garden width: " + width + " metres");
        System.out.println("Garden area: " + gardenArea + " square metres");
        System.out.println("Garden perimeter: " + gardenPerimeter + " metres");

    }
}
