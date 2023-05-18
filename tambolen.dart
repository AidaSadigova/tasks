import 'dart:io';
main(){
    tamBolenSiyahisi();
}


void tamBolenSiyahisi (){
  stdout.write("Tam bolenlerini tapmaq istediyiniz ededi daxil edin zehmet olmasa: ");
  int eded=int.parse(stdin.readLineSync().toString());
  
  if(eded>0){
  stdout.writeln(' '*100);
  stdout.writeln("Daxil etdiyiniz ededin tam bolenleri asagidakilardir: ");
  for(int i=1; i<=eded;i++){
    if(eded%i==0){
      stdout.writeln(i);
    }
  }
 }else if (eded<0){
  stdout.writeln(' '*100);
  stdout.writeln("Daxil etdiyiniz ededin tam bolenleri asagidakilardir: ");
  for(int i=-1; i>=eded;i--){
    if(i!=0){
      if(eded%i==0){
      stdout.writeln(i);
      }
    }
  }
 }else{
    stdout.writeln("Sifirin tam bolenleri sifirdan basqa butun ededlerdir....");
  }
}