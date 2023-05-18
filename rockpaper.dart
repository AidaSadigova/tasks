import 'dart:io';
import 'dart:math';
main(){
  Random n=new Random();
  List<String> gameList=['rock', 'scissors', 'paper'];
  stdout.writeln("Please enter your choice:\nrock\nscissors\npaper");
  String userChoice =stdin.readLineSync().toString().toLowerCase();
  stdout.writeln("Your choice:  $userChoice");
  int userCount=0;
  int pcCount=0;
  int score=10;
  for(int i=0; i<score; i++){
    randomListItem(List gameList) => gameList[n.nextInt(gameList.length)];
    String pcChoice = randomListItem(gameList);
  if (userChoice == pcChoice){

  } else if(userChoice=='rock' && pcChoice=='scissors'){
    userCount++;
  } else if (userChoice=='paper' && pcChoice=='rock'){
    userCount++;
  } else if(userChoice=='scissors' && pcChoice=='paper'){
    userCount++;
  } else{
    pcCount++;
  }
}
  if(userCount>pcCount){
    stdout.writeln("You win and Score is $userCount : $pcCount");
  } else{
    stdout.writeln("Pc win and Score is $pcCount : $userCount");
  }
}

