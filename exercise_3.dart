//import 'dart:html';
import 'dart:io';
main(){
  String login='login';
  String guest='guest';
  String choice1;
  String choice2;
  String choice3;
  String choice4;
  String choice5;
  String choice6;
  String choice7;
  int    choice8;
  String? userName;
  String? password;
  String Continue='continue';
  String Exit='exit';
  String cash='cash';
  String card='card';
  String deliver="deliver";
  String takeYourself='takeYourself';
  String directly='directly';
  String partbypart='partbypart';
  String birkart='birkart';
  String tamkart='tamkart';
  String bolkart='bolkart';
  int three=3;
  int six=6;
  int twelve=12;
  int eighteen=18;
  int twentyFour=24;
  String polo='polo';
  double poloCost=50;
  double collarCost=30;
  double sleevelessCost=80;
  String sleeveless='sleeveless';
  String collar='collar';

  print('-'*15 + 'Sale of product' + '-'*15);
  stdout.writeln("Please choose the entrance type for entering site:\n $login or $guest.......");
  choice1=stdin.readLineSync().toString();
  if(choice1==login){
    stdout.writeln("Please enter your name: ");
    userName=stdin.readLineSync().toString();
    if(userName.isEmpty){
      print("Your username must not be empty");
      print("Please enter again....");
      userName=stdin.readLineSync().toString();
    }else{
      print("Your username is $userName");
    }
    stdout.writeln("Please enter your password: ");
    password=stdin.readLineSync().toString();
    if(password.isEmpty){
      print("Your password must not be empty");
      print("Please enter again....");
      password=stdin.readLineSync().toString();
    }else{
      print("Your password is $userName");
    }
    }else if(choice1==guest){
      stdout.writeln("you are visiting our website as a guest, enjoy it");
    }else{
      stdout.writeln("Please choose a entrance type...");
    }
    stdout.writeln("You can see all t-shirt types which you want to buy and can choose one of them.....\n$polo\n$collar\n$sleeveless");
    choice2=stdin.readLineSync().toString();
    if(choice2==polo){
      stdout.writeln("Details about T-shirt.....\nCost: $poloCost dlr\nIts colour: Red\nMaterial:100% Cotton\nBrand:Koton");
      stdout.writeln("Do you want to $Continue or $Exit?.....");
      choice3=stdin.readLineSync().toString();
      if(choice3==Continue){
        stdout.writeln("Please choose a payment type.....$cash  or  $card");
        choice4=stdin.readLineSync().toString();
        if(choice4==cash){
          stdout.writeln("Please choose a deliver type....$deliver   or   $takeYourself ");
          choice5=stdin.readLineSync().toString();
          if(choice5==deliver){
            stdout.writeln("Your payment will increase 10 dlr....It will be ${poloCost+10} dlr");
          }else if(choice5==takeYourself){
            stdout.writeln("Product cost is not changing and it is $poloCost dlr");
          }else{
            stdout.writeln("Please choose a delivery type....");
          }

        }else if(choice4==card){
          stdout.writeln("Please choose a type of card payment.....$directly  or  $partbypart");
          choice6=stdin.readLineSync().toString();
          if(choice6==directly){
            stdout.writeln("The cost is $poloCost dlr and please enter your card information.....");
          }else if(choice6==partbypart){
            stdout.writeln("Please choose a bank type.....   \n$birkart\n$tamkart\n$bolkart");
            choice7=stdin.readLineSync().toString();
            if(choice7==birkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six\n$twelve\n$eighteen\n$twentyFour");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");
              }else if(choice8==twelve){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");
              }else if(choice8==eighteen){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");
              }else if(choice8==twentyFour){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");
              }else{
                stdout.writeln("Please choose a month for birkart payment....");
              }

            }else if(choice7==tamkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six\n$twelve");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");
              }else if(choice8==twelve){
                stdout.writeln("There is an extra cost and its cost will be ${(poloCost*125)/100} dlr");

              }else{
                stdout.writeln("Please choose a month for tamkart payment....");
              }
          }else if(choice7==bolkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $poloCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("There is an extra cost and you must pay ${poloCost+10} dlr for every month.");
              }else{
                stdout.writeln("Please choose a month for bolkart payment....");
              }
          }
        }
      }

    }else{
      stdout.writeln("we will be pleasant if we see you next time here....");
    }
  }
      else if(choice2==collar){
      stdout.writeln("Details about T-shirt.....\nIts cost $collarCost dlr\nIts colour: Blue\nMaterial:38% Cotton, 27% Elastan\nBrand:Defacto");
      stdout.writeln("Do you want to $Continue or $Exit?.....");
      choice3=stdin.readLineSync().toString();
      if(choice3==Continue){
        stdout.writeln("Please choose a payment type.....$cash  or  $card");
        choice4=stdin.readLineSync().toString();
        if(choice4==cash){
          stdout.writeln("Please choose a deliver type....$deliver   or   $takeYourself ");
          choice5=stdin.readLineSync().toString();
          if(choice5==deliver){
            stdout.writeln("Your payment will increase 10 dlr....It will be ${collarCost+10} dlr");
          }else if(choice5==takeYourself){
            stdout.writeln("Product cost is not changing and it is $collarCost dlr");
          }else{
            stdout.writeln("Please choose a delivery type....");
          }

        }else if(choice4==card){
          stdout.writeln("Please choose a type of card payment.....$directly  or  $partbypart");
          choice6=stdin.readLineSync().toString();
          if(choice6==directly){
            stdout.writeln("The cost is $collarCost dlr and please enter your card information.....");
          }else if(choice6==partbypart){
            stdout.writeln("Please choose a bank type.....   \n$birkart\n$tamkart\n$bolkart");
            choice7=stdin.readLineSync().toString();
            if(choice7==birkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six\n$twelve\n$eighteen\n$twentyFour");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");
              }else if(choice8==twelve){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");
              }else if(choice8==eighteen){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");
              }else if(choice8==twentyFour){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");
              }else{
                stdout.writeln("Please choose a month for birkart payment....");
              }

            }else if(choice7==tamkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six\n$twelve");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");
              }else if(choice8==twelve){
                stdout.writeln("There is an extra cost and its cost will be ${(collarCost*125)/100} dlr");

              }else{
                stdout.writeln("Please choose a month for tamkart payment....");
              }
          }else if(choice7==bolkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $collarCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("There is an extra cost and you must pay ${collarCost+10} dlr for every month.");
              }else{
                stdout.writeln("Please choose a month for bolkart payment....");
              }
          }
        }
      }

    }else{
      stdout.writeln("we will be pleasant if we see you next time here....");
    }
    }else if(choice2==sleeveless){
      stdout.writeln("Details about T-shirt.....\nIts cost $sleevelessCost dlr\nIts colour: Black\nMaterial:50% Cotton, 50% Bambu\nBrand:Mango");
      stdout.writeln("Do you want to $Continue or $Exit?.....");
      choice3=stdin.readLineSync().toString();
      if(choice3==Continue){
        stdout.writeln("Please choose a payment type.....$cash  or  $card");
        choice4=stdin.readLineSync().toString();
        if(choice4==cash){
          stdout.writeln("Please choose a deliver type....$deliver   or   $takeYourself ");
          choice5=stdin.readLineSync().toString();
          if(choice5==deliver){
            stdout.writeln("Your payment will increase 10 dlr....It will be ${sleevelessCost+10} dlr");
          }else if(choice5==takeYourself){
            stdout.writeln("Product cost is not changing and it is $sleevelessCost dlr");
          }else{
            stdout.writeln("Please choose a delivery type....");
          }

        }else if(choice4==card){
          stdout.writeln("Please choose a type of card payment.....$directly  or  $partbypart");
          choice6=stdin.readLineSync().toString();
          if(choice6==directly){
            stdout.writeln("The cost is $sleevelessCost dlr and please enter your card information.....");
          }else if(choice6==partbypart){
            stdout.writeln("Please choose a bank type.....   \n$birkart\n$tamkart\n$bolkart");
            choice7=stdin.readLineSync().toString();
            if(choice7==birkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six\n$twelve\n$eighteen\n$twentyFour");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");
              }else if(choice8==twelve){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");
              }else if(choice8==eighteen){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");
              }else if(choice8==twentyFour){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");
              }else{
                stdout.writeln("Please choose a month for birkart payment....");
              }

            }else if(choice7==tamkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six\n$twelve");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");
              }else if(choice8==twelve){
                stdout.writeln("There is an extra cost and its cost will be ${(sleevelessCost*125)/100} dlr");

              }else{
                stdout.writeln("Please choose a month for tamkart payment....");
              }
          }else if(choice7==bolkart){
              stdout.writeln("Please choose for how many months do you want to pay.....   \n$three\n$six");
              choice8=int.parse(stdin.readLineSync().toString());
              if(choice8==three){
                stdout.writeln("Your cost is $sleevelessCost dlr and There is no extra cost.");

              }else if(choice8==six){
                stdout.writeln("There is an extra cost and you must pay ${sleevelessCost+10} dlr for every month.");
              }else{
                stdout.writeln("Please choose a month for bolkart payment....");
              }
          }
        }
      }

    }else{
      stdout.writeln("we will be pleasant if we see you next time here....");
    }
    }else{
      stdout.writeln("You didn't choose anything. Please choose a T-shirt which you want to buy......");
    }
}
