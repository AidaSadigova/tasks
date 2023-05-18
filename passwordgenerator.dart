import 'dart:io';
import 'dart:math';
import 'dart:convert';
main() {
  stdout.write("Choose a password type which you want? weak, medium or strong: ");
  String userChoice = stdin.readLineSync().toString().toLowerCase();
  selectPassword(userChoice);
}
var a;
void shufflePassword(int strength) {
 for (var i = 0; i < 10; i++) {
     a=new Random().nextInt(255);
   }
   List<int> intList = List.generate(strength, (_) => a);
   List charList = base64UrlEncode(intList).split('').toList();
   charList.shuffle();
   print("\nYour password is: ${charList.join('')}\n");
}
void selectPassword(String strength) {
  if (strength == "weak") {
    shufflePassword(3);
  } else if (strength == "medium") {
    shufflePassword(16);
  } else if (strength == "strong") {
    shufflePassword(32);
  } else {
    print("Please enter: weak, medium or strong....");
  }
}







