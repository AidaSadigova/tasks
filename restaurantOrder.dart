void main(List<String> args) {
OrderingSystem a=OrderingSystem();
a.addItem(Appetizer(description: "spicy", name: "Pizza", price: 23));
a.addItem(MainCourse(ingredients: ["flour", "egg","sugar"], name: "Cake", price: 24));
a.addItem(Dessert(isSweet: false, name: "FastFood", price: 12));
a.addItem(Dessert(isSweet: true, name: "Cheesecake", price: 8));

//a.removeItem("Pizza");
a.calculateTotalCost();
}

class FoodItem {
  String name;
  double price;
  FoodItem({
    required this.name,
    required this.price,
  });
}

class OrderingSystem<T extends FoodItem> {
  List<T> order=[];
  OrderingSystem();

  void addItem(T item){
    order.add(item);
  }

  // void removeItem(String name){
  //   for(int i=0;i<order.length;i++){
  //     if(order[i].name==name){
  //       order.remove(order[i]);
  //     }
      
  //   }
  // }

  void removeItems(T item){
    order.remove(item);
  }

   calculateTotalCost(){
    double sum=0;
     for(FoodItem item in order){
      sum+=item.price;
     }
     print("Total cost of the order: $sum");
  }
}

class Appetizer extends FoodItem {
  String description;
  Appetizer({
    required this.description,
    required super.name,
    required super.price
  });
}

class MainCourse extends FoodItem {
  List<String> ingredients=[];
  MainCourse({
    required this.ingredients,
    required super.name,
    required super.price
  });
}

class Dessert extends FoodItem {
  bool isSweet;
  Dessert({
    required this.isSweet,
    required super.name,
    required super.price
  });

}
