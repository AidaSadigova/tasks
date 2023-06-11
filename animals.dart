import 'dart:io';

main() {
  stdout.writeln("Mammals Information:");
  print('--------------------------------------------------------');
  print('   First Mammal');
  Lion lion = Lion("Africa", "male", "Lion", 45, 1978, "yellow", true, false);
  lion.displayDetails();
  print('');
  print('   Second Mammal');
  Goat goat =
      Goat(4, "Azerbaijan", "female", "goat", 23, 2020, "white", false, true);
  goat.displayDetails();
  print('');
  stdout.writeln("Birds Information:");
  print('--------------------------------------------------------');
  print('   First Bird');
  Crow crow =
      Crow(40, "Anywhere", "male", "Crow", 23, 2020, "black", true, false);
  crow.displayDetails();
  print('');
  print('   Second Bird');
  Heron heron = Heron(
      10, "South Africa", "male", "Heron", 24, 2019, "White", false, true);
  heron.displayDetails();
  print('');
  stdout.writeln("Reptiles Information:");
  print('--------------------------------------------------------');
  print('   First Reptile');
  Tortoise tortoise=Tortoise(3, "Turkey", "female", "Tortoise", false, 1988, "light green", false, true);
  tortoise.displayDetails();
  print('');
  print('   Second Reptile');
  Skink skink=Skink(7, "Azerbaijan", "male", "Skink", false, 2002, "brown", true, false);
  skink.displayDetails();
  
}
class Animal {
  String color;
  int birthYear;
  bool isEtyeyen;
  bool isOtyeyen;
  Animal(this.birthYear, this.color, this.isEtyeyen, this.isOtyeyen);
  void displayDetails() {
    print('BirthYear: $birthYear');
    print('Color: $color');
    if (isEtyeyen == true) {
      print("Animal is carnivore.");
    } else{
      print("Animal is herbivore.");
    }
  }
}
class Mammals extends Animal {
  String type;
  int age;
  Mammals(this.type, this.age, super.birthYear, super.color, super.isEtyeyen,
      super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Animal Type: $type');
    print('Animal Age: $age');
  }
}
class Lion extends Mammals {
  String location;
  String gender;
  Lion(this.location, this.gender, super.type, super.age, super.birthYear,
      super.color, super.isEtyeyen, super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Animal Location: $location');
    print('Animal Gender: $gender');
  }
}
class Goat extends Mammals {
  int buynuzUzunluq;
  String location;
  String gender;
  Goat(this.buynuzUzunluq, this.location, this.gender, super.type, super.age,
      super.birthYear, super.color, super.isEtyeyen, super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('BuynuzUzunlugu: $buynuzUzunluq');
  }
}
class Birds extends Animal {
  int wingLength;
  String type;
  Birds(this.type, this.wingLength, super.birthYear, super.color,
      super.isEtyeyen, super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Animal Type: $type');
    print('WingLength of bird: $wingLength');
  }
}
class Crow extends Birds {
  String location;
  String gender;
  int flyingSpeed;
  Crow(this.flyingSpeed, this.location, this.gender, super.type, super.age,
      super.birthYear, super.color, super.isEtyeyen, super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Animal flyingSpeed: $flyingSpeed');
  }
}
class Heron extends Birds {
  int legLength;
  String location;
  String gender;
  Heron(this.legLength, this.location, this.gender, super.type, super.age,
      super.birthYear, super.color, super.isEtyeyen, super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Leg Height: $legLength');
  }
}
class Reptile extends Animal {
  String type;
  bool isPoisonous;
  Reptile(this.type, this.isPoisonous, super.birthYear, super.color,
      super.isEtyeyen, super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Animal Type: $type');
    print('Is it poisonous?: $isPoisonous');
  }
}

class Tortoise extends Reptile {
  int speed;
  String location;
  String gender;
  Tortoise(this.speed, this.location, this.gender, super.type,super.isPoisonous,super.birthYear,super.color,super.isEtyeyen,super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Speed of animal: $speed');
  }
}
class Skink extends Reptile {
  int quyruqUzunluq;
  String location;
  String gender;
  Skink(this.quyruqUzunluq, this.location, this.gender, super.type, super.isPoisonous,super.birthYear,super.color,super.isEtyeyen,super.isOtyeyen);
  @override
  void displayDetails() {
    super.displayDetails();
    print('Quyruq uzunlugu: $quyruqUzunluq');
  }
}