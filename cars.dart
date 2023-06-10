import 'dart:io';

main(){
   Cars a=Cars("Sportage", "Kia");
   MiniCar b= MiniCar("purple", 10, 30000,"Macan", "Porsche");
   BigCar c= BigCar(2015, "grey", 50, 15000, "Cruze", "Chevrolet");
   a.display();
   b.display();
   c.display();
   a.startToGo();
   b.decreasePrice();
   c.decreaseSpeed();
}

class Cars{
    String name;
    String brand;
    Cars(this.name,this.brand);
  void startToGo(){
    stdout.writeln("$brand markali $name tries to start to go!...");
  }
  void display(){
    print("Model1:  Brand: ${this.brand}, Name: ${this.name}");
  }
}

class MiniCar extends Cars{
    String color;
    int speed;
    int price;
    MiniCar(this.color,this.speed, this.price,super.name,super.brand);

    void decreasePrice(){
    if(price>20000){
      price=price-500;
      stdout.writeln("The price of $brand markali $name after changes is $price");
    }
  }
  void display(){
    print("Model2:  Brand: ${this.brand}, Name: ${this.name}, Color: ${this.color}, Price: ${this.price}, Speed: ${speed}");
  }
}

class BigCar extends MiniCar{
  int year;
  BigCar(this.year,super.color,super.speed,super.name,super.brand,super.price);
  void decreaseSpeed(){
    if(speed>30){
      speed=speed-15;
      stdout.writeln("The speed of $brand markali $name after changes is $speed");
    }
  }
  void display(){
    print("Model3:  Brand: ${this.brand}, Name: ${this.name}, Color: ${this.color}, Price: ${this.price}, Speed: ${speed}, Year: ${this.year}");
  }
}