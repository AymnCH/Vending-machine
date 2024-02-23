import 'dart:io';

void main() {
  print("Hello! Welcome to the vending machine\n");

  int choice = 0;
  int price = 0;

  do {
    print("-----------------------");
    print("Please select an item:");
    print("-----------------------");
    print("1. CHOCOLATE / 20DA");
    print("2. WATER / 10DA");
    print("3. MILK / 40DA");
    print("4. CHIPS / 15DA");
    print("5. NUTS / 5DA");
    print("0. Confirm");
    print("-----------------------");

    try {
      choice = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Invalid input. Please enter a number.");
      continue; // Skip the rest of the loop and ask for input again
    }

    switch (choice) {
      case 1:
        print("Chocolate is 20da");
        price += 20;
        break;
      case 2:
        print("Water is 10da");
        price += 10;
        break;
      case 3:
        print("Milk is 40da");
        price += 40;
        break;
      case 4:
        print("Chips is 15da");
        price += 15;
        break;
      case 5:
        print("Nuts are 5da");
        price += 5;
        break;
      case 0:
        print("Confirming all your items. Thank you!");
        break;
      default:
        print("Sorry, that item is not available.");
    }
  } while (choice != 0);

  // Move the total print statement outside the loop
  print("Your total is $price DA");

  int money = int.parse(stdin.readLineSync()!);
  if (money >= price) {
    print("Thank you, Here is your change ${money - price}");
  } else {
    print("Please insert the right amount of money");
  }
}
