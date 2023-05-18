import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'dart:collection';
main(){
  var countUser=0;
  var countPc=0;
  List<String> game=['rock','scissors','paper'];
  //Map<int,String> g1={1:'rock', 2:'scissors', 3:'paper'};
  String user=stdin.readLineSync().toString();
  for(int i=0; i<game.length; i++){
    if(user=='rock' && game[i]=='scissors'){
        countUser++;
    } else if(user=='rock' && game[i]=='paper'){
        countPc++; 
    } else if(user=='rock' && game[i]=='rock'){
        countUser=0;
        countPc=0;
    }
    
    for(int i=0; i<game.length;i++){ 
    if(user=='scissors' && game[i]=='rock'){
      countPc++;
    } else if(user=='scissors' && game[i]=='paper'){
      countUser++;
    } else if(user=='scissors' && game[i]=='scissors'){
      countUser=0;
      countPc=0;
    } 
    }
  
    for(int i=0;i<game.length;i++){
       if(user=='paper' && game[i]=='rock'){
      countUser++;
    } else if(user=='paper' && game[i]=='scissors'){
      countPc++;
    } else if(user=='paper' && game[i]=='paper'){
      countUser=0;
      countPc=0;
    }
  }
  
}
print(countPc);
print(countUser);
}




























// import 'dart:io';
// main(){
//   newListCreation();
// }
// void newListCreation(){
//   List<int> list1=[9,23,45,7,8];
//   List<int> list2=[4,32,5,17,85];
//   list1.addAll(list2);
//   stdout.writeln("Iki siyahinin birlesmis formasi: $list1\n");
//   int smaller=0;
//   for(int i=0; i<=list1.length-1; i++){
//     for(int j=i+1; j<list1.length; j++){
//       if(list1[i]>list1[j]){
//         smaller=list1[i];
//         list1[i]=list1[j];
//         list1[j]=smaller;
//       }
//     }
//   }
//   stdout.writeln("Yeni siyahidaki elementlerin azdan coxa siralanmis formasi:  $list1");
// }