import 'dart:io';
main(){
  
tamBolenSiyahisi();
  // int num=0;
  // print('Please enter a sentence which will consist of at least 5 words:');
  // String? user_name = stdin.readLineSync()!;
  // for(int i=0; i<user_name.length; i++){
  //   String b= user_name[i];
  //   if (b==" "){
  //     num++;
  //   }
  // } 
  // if(num>=4){
  // String n=user_name.split(' ').reversed.join(' ');
  // print("Daxil edilmis cumlenin ters yazilisi asagidaki kimidir\n $n"); 
  // } else{
  //   print("Daxil edilmis cumle 5 sozden azdir.");

  // }
  // print('Please enter your name:');
  // String user_name = stdin.readLineSync().toString();
  // print('Please enter your age:');
  // int user_age = int.parse(stdin.readLineSync().toString());
  // int year=0;
  // print('Istifadeci adi $user_name -dir ve yasi $user_age -dir.');
  // while(user_age!=100){
  //   user_age=user_age+1;
  //   year=year+1;
    
  // }
  // print('Istifadecinin 100yasinin tamam olmasina $year il qalib.');
  // typesafety , nullsafety search

   







  // print('Please enter your name:');
  // String? user_name = stdin.readLineSync()!;
  // print('Please enter your age:');
  // int? user_age = int.parse(stdin.readLineSync()!);
  // int year=0;
  // print('Istifadeci adi $user_name -dir ve yasi $user_age -dir.');
  // while(user_age!=100){
  //   user_age=user_age+1;
  //   year=year+1;
    
  // }
  // print('Istifadecinin 100yasinin tamam olmasina $year il qalib.');




   




}
void tamBolenSiyahisi (){
  stdout.write("Tam bolenlerini tapmaq istediyiniz ededi daxil edin zehmet olmasa: ");
  int eded=int.parse(stdin.readLineSync().toString());
  
  if(eded==0){
    stdout.writeln("Sifirin tam bolenleri sonsuzdur....");
  } else if(eded>0){
  stdout.writeln(' '*100);
  stdout.writeln("Daxil etdiyiniz ededin tam bolenleri asagidakilardir: ");
  for(int i=1; i<=eded;i++){
    if(eded%i==0){
      stdout.writeln(i);
    }
  }
 
  }else{
    stdout.writeln(' '*100);
  stdout.writeln("Daxil etdiyiniz ededin tam bolenleri asagidakilardir: ");
  for(int i=-1; i>=eded;i--){
    if(i!=0){
      if(eded%i==0){
      stdout.writeln(i);
    }
    }
  }
  }
}