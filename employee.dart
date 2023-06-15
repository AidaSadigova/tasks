import 'dart:io';
main() {
  //Person one = Person(name: "Aida", mail: "aide.sadiqovva@gmail.com");
  Employee one = Employee(
      position: "developer", name: "Togrul", mail: "togrul1234@gmail.com");
  stdout.writeln("First employee");
  one.display();
  Manager two = Manager(
      team: ["Aysun", "Leyla"], name: "Aida", mail: "aidesadiqova@gmail.com");
  stdout.writeln("Second employee");
  two.display();
  two.addToTeam();
}
abstract class Person {
  String name;
  String mail;
  Person({
    required this.name,
    required this.mail,
  });
  void display() {
    print("Name: $name");
    print("Mail: $mail");
  }
}
class Employee extends Person {
  String position;
  Employee({required this.position, required super.name, required super.mail});
  @override
  void display() {
    print("Position: $position");
  }
}
class Manager extends Person {
  List<String> team;
  Manager({required this.team, required super.name, required super.mail});
  @override
  void display() {
    print("Team: $team");
  }
  void addToTeam() {
    stdout.writeln("how many people do you want to add?");
    int count = int.parse(stdin.readLineSync().toString());
    for (int i = 0; i < count; i++) {
      team.add(stdin.readLineSync().toString());
    }
    print("Your new team: $team");
  }
}