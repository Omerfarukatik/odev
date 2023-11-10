
void main() {
  Laptop laptop1 = Laptop(1, 'Laptop A', 8);
  Laptop laptop2 = Laptop(2, 'Laptop B', 16);
  Laptop laptop3 = Laptop(3, 'Laptop C', 4);

  laptop1.detaylariGoster();
  laptop2.detaylariGoster();
  laptop3.detaylariGoster();
}
class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void detaylariGoster() {
  print("id: $id name: $name ram: $ram");
}}