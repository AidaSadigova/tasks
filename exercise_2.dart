import 'dart:io';
main(){
  print('Please enter your name:');
  String user_name = stdin.readLineSync().toString();
  print('Please enter your age:');
  int user_age = int.parse(stdin.readLineSync().toString());
  int year=0;
  print('Istifadeci adi $user_name -dir ve yasi $user_age -dir.');
  while(user_age!=100){
    user_age=user_age+1;
    year=year+1;
  }
  print('Istifadecinin 100yasinin tamam olmasina $year il qalib.');
