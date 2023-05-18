import 'dart:io';
main(){
int num=0;
  print('Please enter a sentence which will consist of at least 5 words:');
  String? user_name = stdin.readLineSync()!;
  for(int i=0; i<user_name.length; i++){
    String b= user_name[i];
    if (b==" "){
      num++;
    }
  } 
  if(num>=4){
  String n=user_name.split(' ').reversed.join(' ');
  print("Daxil edilmis cumlenin ters yazilisi asagidaki kimidir\n $n"); 
  } else{
    print("Daxil edilmis cumle 5 sozden azdir.");
  }
}
