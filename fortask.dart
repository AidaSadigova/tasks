import 'dart:io';
main(){
  
print(tamBolenSiyahisi(7));
}

int tamBolenSiyahisi (int eded){
  stdout.writeln("Please enter a number: ");
  eded=int.parse(stdin.readLineSync().toString());
  return eded;

}