import 'dart:io';
main(){
  Map<String, List<int>> costumers={
    'John Snow': [500,200],
    'Julia Snow': [300,130],
  };
  
  costumers.forEach((key, value) { 
    if (value.length>=2){
      for(int i=0; i<value.length;i++ ){
        if(value[i]>200){
          value[i]+=10;
        }
      }
    }
  });
  print(costumers);
}
