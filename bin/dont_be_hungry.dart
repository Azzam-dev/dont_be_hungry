// dart "/Users/azzamal-rashed/Documents/dartProjects/dont_be_hungry/bin/dont_be_hungry.dart"
import 'dart:io';
import 'dart:math';

main() {
  startGame();
}

void startGame() {
  List<Monster> monsters = [
    Monster("Ghost!👻", 20),
    Monster("Zombie!🧟‍♂️", 15),
    Monster("Slender Man! 🤵🏻‍♂️", 30),
    Monster("lion🦁", 35)
  ];

  List<Food> foods = [
    Food("🍎", 10, 10),
    Food("🥫", 5, 10),
    Food("🍖", 30, 50),
    Food("🍔", 20, 45)
  ];

  var player1 = Player();
  String userInput = "";
  player1.run();
  while (userInput.toLowerCase() != "q") {
    userInput = stdin.readLineSync()!; // مدخل المستخدم

    monsters.shuffle(); // ترتيب بشكل عشوائي قائمة الوحوش
    foods.shuffle(); // ترتيب بشكل عشوائي قائمة الاكل

    // تحديد حظ اللاعب
    var random = Random();
    int playerLuck = random.nextInt(10);

    if (playerLuck == 0) {
      print(monsters[0].name);
    } else if (playerLuck == 9) {
      print(foods[0].name);
    }
  }
  print("****the end****");
}

class Player {
  String name = "";
  int health = 100;
  int hungr = 0;
  int runingSpeed = 20;
  Weapon myWeapon = Weapon();

  void run() {
    print(".");
  }

  void eat() {}

  void hit() {}

  void take() {}
}

class Weapon {
  String name = "";
  int strength = 10;
  int? numberOfHits;
}

class Monster {
  // Properties
  String name = "";
  int health = 100;
  int strength = 10;

  // Constructor
  Monster(String name, int strength) {
    this.name = name;
    this.strength = strength;
  }

  // Methods
  void printData() {
    print("${name} has a health of ${health},");
    print("and hit Strenght of ${strength}");
  }
}

class Food {
  String name = "";
  int health = 0; // مقدار زيادة الدم
  int feeding = 0; // مقدار زيادة التغذية

  Food(String name, int health, int feeding) {
    this.name = name;
    this.health = health;
    this.feeding = feeding;
  }
}



/*
  var ghost = Monster("Ghost!👻", 20);
  var zombie = Monster("Zombie!🧟‍♂️", 15);
  var slenderMan = Monster("Slender Man! 🤵🏻‍♂️", 30);

  ghost.printData();
  zombie.printData();
  slenderMan.printData();



controller: 
  q = quit game
  . = run 🏃🏻

  h = hit 👊🏼
  e = eat 🍎
  t = take✨
  p = print 🧾


*/