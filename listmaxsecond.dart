// import 'dart:io';

// main(){
//   int biggerTwo=0;
//   int smaller=0;
//   List<int> list=[2,4,6,7,9,2,5,4,2,8];
//   stdout.writeln("Verilmis siyahi:  $list\n");
//   List<int> l=list.toSet().toList();
//   stdout.writeln("Təkrarlanmayan elementlərdən ibarət yeni siyahı:  $l\n");
//   for(int i=0; i<=l.length-1; i++){
//     for(int j=i+1; j<l.length; j++){
//       if(l[i]>l[j]){
//         smaller=l[i];
//         l[i]=l[j];
//         l[j]=smaller;
        
//       }
//     }
//   }
//   stdout.writeln("Listin azdan coxa duzulmus yeni versiyasi:  $l\n");
//   for(int i=0; i<=l.length; i++){
//     biggerTwo=l[l.length-2];
//   }
//   stdout.write("Listdeki elementlerden 2ci en boyuk eded: $biggerTwo");
// }