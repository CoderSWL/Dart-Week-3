// 1. Abstraction: Create an abstract class Animal.
abstract class Animal {
  //  Abstract method that must be implemented by subclasses
  void makeSound();

  // Concrete method with default behavior
  void sleep() {
    print("Animal is sleeping.");
  }
}

// 2. Inheritance: Create a Dog class that extends Animal
class Dog extends Animal {
  // 3. Polymorphism: Overriding the makeSound method
  @override
  void makeSound() {
    print("Dog barks!");
  }
}

// 4. Inheritance: Create a Cat class that extends Animal
class Cat extends Animal {
  // 3. Polymorphism: Overriding the makeSound method
  @override
  void makeSound() {
    print("Cat meows!");
  }
}

// 5. Encapsulation: Create a class with private variables and controlled access methods
class Person {
  // Private variable
  String _name;
  int _age;

  // Constructor to initialize the private variables
  Person(this._name, this._age);

  // Public getter for name
  String get name => _name;

  // Public setter for name with validation
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print("Name cannot be empty.");
    }
  }

  // Public getter for age
  int get age => _age;

  // Public setter for age with validation
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      print("Age cannot be negative.");
    }
  }

  // Method to display person's information
  void displayInfo() {
    print("Name: $_name, Age: $_age");
  }
}

void main() {
  // Testing the Abstract class and Polymorphism
  Animal myDog = Dog();
  myDog.makeSound(); // Output: Dog barks!
  myDog.sleep(); // Output: Animal is sleeping.

  Animal myCat = Cat();
  myCat.makeSound(); // Output: Cat meows!
  myCat.sleep(); // Output: Animal is sleeping.

  // Testing Encapsulation with Person class
  Person person = Person("Alice", 30);
  person.displayInfo(); // Output: Name: Alice, Age: 30

  // Accessing and modifying private data through getters and setters
  person.name = "Bob";  // Valid name change
  person.age = 35;      // Valid age change
  person.displayInfo(); // Output: Name: Bob, Age: 35

  // Invalid updates (won't change the data)
  person.name = "";  // Output: Name cannot be empty.
  person.age = -5;   // Output: Age cannot be negative.
}
