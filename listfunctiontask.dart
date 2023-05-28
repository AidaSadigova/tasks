import 'dart:io';
main(){
  List<int> listCreated=[];
  stdout.writeln("How many elements do you want to add?  ");
  int count=int.parse(stdin.readLineSync().toString());
  stdout.writeln("Please enter list elements:  ");
  for(int i=0;i<count;i++){
  listCreated.add(int.parse(stdin.readLineSync().toString()));
  }
  stdout.writeln("Your list is this:        $listCreated");
  stdout.writeln("Max element of list:      ${findMaxElement(listCreated)}");
  stdout.writeln("Min element of list:      ${findMinElement(listCreated)}");
  stdout.writeln("Sum of list element:      ${findSumElement(listCreated)}");
  stdout.writeln("Average element of list:  ${findMiddleElement(listCreated)}");
}
int findMaxElement(List<int> maxNum){
  int max=0;
  for(int j=0;j<maxNum.length;j++){
    if(maxNum[j]>max){
      max=maxNum[j];
    } 
  }
  return max;
}
int findMinElement(List<int> minNum){
  int min=minNum[0];
  for(int k=0;k<minNum.length;k++){
    if(minNum[k]<min){
      min=minNum[k];
    } 
  }
  return min;
}
int findSumElement(List<int> sumNum){
  int sum=0;
  for(int i=0;i<sumNum.length;i++){
    sum+=sumNum[i];
  }
  return sum;
}
int findMiddleElement(List<int> midNum){
  int sum=0;
  int mid;
  for(int i=0;i<midNum.length;i++){
    sum+=midNum[i];
  }
  return mid=sum~/(midNum.length);
}