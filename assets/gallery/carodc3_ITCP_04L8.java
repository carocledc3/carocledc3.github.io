// CARLOS ROMEO CLEMENTE DEL CASTILLO III
// UNIVERSITY OF THE CORDILLERAS, BSIT-1L
// CC2/Introduction to Computer Programming
// [30IP-04L8] Laboratory Challenge №8
// 10 OCTOBER 2024

// define employee object
class Employee {
    static int count = 0;
    // static counter to track the number of employees

    // employee attributes...
    String employeeID;
    String name;
    double hourlyWage;
    double hoursWorked;

    // constructor to be rune everytime the object is instantiated
    Employee(String emid, String nm, double hw, double hrs) {
        count += 1; // increment the employee counter
        this.employeeID = emid; // set attributes according to parameters
        this.name = nm;
        this.hourlyWage = hw;
        this.hoursWorked = hrs;
    }

    // salary computation
    public double calculateSalary() {
        return hourlyWage * hoursWorked; // total salary == rate * hours 
    }


    // separate method to display the salary
    public void displaySalary() {
        System.out.printf("Salary of %s (%s): $%.2f%n", name, employeeID, calculateSalary());
    }

    // method to display employee details
    public void displayEmployeeDetails() {
        System.out.println("Employee " + count + ":");
        System.out.println("\tEmployee ID: " + employeeID);
        System.out.println("\tEmployee Name: " + name);
        System.out.printf("\tHourly Wage: $%.2f%n", hourlyWage);
        System.out.printf("\tHours Worked: $%.2f%n", hoursWorked);
    }
}

// entry point
public class carodc3_ITCP_04L8 {

    public static void main(String[] args) {

        // create employee aliceGuo with id 0556, name "Guo Hua Ping", rate 12.56, hours 56.00
        Employee aliceGuo = new Employee("0556", "Guo Hua Ping", 12.56, 56);
        aliceGuo.displayEmployeeDetails(); // display employee details
        aliceGuo.displaySalary(); // display salary

        // create employee xiJinping with id 0557, name "Xi Jin Ping", rate 17.89, hours 56.00
        Employee xiJinping = new Employee("0557", "Xi Jin Ping", 17.89, 56);
        xiJinping.displayEmployeeDetails();
        xiJinping.displaySalary();

        // create employee connorLeConnard with id 0558, name "Maxime Bernier", rate 16.09, hours 0
        Employee connorLeConnard = new Employee("0558", "Maxime Bernier", 16.09, 0);
        connorLeConnard.displayEmployeeDetails();
        connorLeConnard.displaySalary();

    }
}