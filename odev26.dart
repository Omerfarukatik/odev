abstract class Bottle {
  void open();
}

class CokeBottle implements Bottle {


  static Bottle create() {
    return CokeBottle();
  }
  
  @override
  void open() {
    print("coke bottle is opened");
  }
}

void main() {
  Bottle kolaSisesi = CokeBottle.create();

  kolaSisesi.open();
}
