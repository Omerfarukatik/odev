
void main() {
  House house1 = House(1, 'Evin Adı A', 150000.0);
  House house2 = House(2, 'Evin Adı B', 200000.0);
  House house3 = House(3, 'Evin Adı C', 120000.0);

  List<House> houseList = [house1, house2, house3];

  for (House house in houseList) {
    print('ID: ${house.id} Adı  ${house.name} fiyatı: ${house.prize} dolar');
  }
}
class House {
  int id;
  String name;
  double prize;

  House(this.id, this.name, this.prize);
}
