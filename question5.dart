// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    // TODO: Calculate total salary (base + bonus)
    return baseSalary + bonus; // Placeholder - replace with actual implementation
  }
  
  void processPayment(double amount) {
    // TODO: Process payment
    // Add your implementation here
    print("Processing payment of \$${amount.toStringAsFixed(2)}");
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // TODO: Generate report
    return "Monthly report for $employeeName in $department department"; // Placeholder - replace with actual implementation
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  String name;
  String id;
  String department;
  
  Employee(this.name, this.id, this.department);
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);
  
  @override
  String getJobTitle() {
    // TODO: Return manager job title
    return "Manager"; // Placeholder - replace with actual implementation
  }
  
  @override
  double getBaseSalary() {
    // TODO: Return manager base salary
    return 8000.0; // Placeholder - replace with actual implementation
  }
  
  @override
  void displayInfo() {
    // TODO: Override to show manager-specific info
    // Add your implementation here
    super.displayInfo();
    print("Team Size: $teamSize");
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);
  
  @override
  String getJobTitle() {
    // TODO: Return developer job title
    return "Senior Developer"; // Placeholder - replace with actual implementation
  }
  
  @override
  double getBaseSalary() {
    // TODO: Return developer base salary
    return 6000.0; // Placeholder - replace with actual implementation
  }
  
  @override
  void displayInfo() {
    // TODO: Override to show developer-specific info
    // Add your implementation here
     super.displayInfo();
    print("Programming Language: $programmingLanguage");
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information
  
  // TODO: Create employees
  
  // TODO: Demonstrate salary calculation with bonus
  
  // TODO: Display employee information
  
  Manager manager = Manager("Alice", "M001", "HR", 5);
  Developer dev1 = Developer("Bob", "D001", "IT", "Dart");
  Developer dev2 = Developer("Charlie", "D002", "IT", "Python");
  
  
  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 2000.0);
  double dev1Salary = dev1.calculateSalary(dev1.getBaseSalary(), 1000.0);
  double dev2Salary = dev2.calculateSalary(dev2.getBaseSalary(), 1500.0);
  
  print("\n--- Salary Calculation ---");
  print("${manager.name} total salary: \$${managerSalary.toStringAsFixed(2)}");
  print("${dev1.name} total salary: \$${dev1Salary.toStringAsFixed(2)}");
  print("${dev2.name} total salary: \$${dev2Salary.toStringAsFixed(2)}");
  
  
  print("\n--- Payment Processing ---");
  manager.processPayment(managerSalary);
  dev1.processPayment(dev1Salary);
  dev2.processPayment(dev2Salary);
  
  
  print("\n--- Manager Report ---");
  print(manager.generateReport(manager.name, manager.department));
  
  
  print("\n--- Employee Information ---");
  manager.displayInfo();
  print("");
  dev1.displayInfo();
  print("");
  dev2.displayInfo();
  
}
