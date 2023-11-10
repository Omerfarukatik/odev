
void main() {
  Cat benimKedim = Cat(1, 'Tekir', 'Gri', 'Miyaw');

  print('Kedi Detayları: ID: ${benimKedim.id} İsim: ${benimKedim.name} Renk: ${benimKedim.color} Ses: ${benimKedim.sound}');

}
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) :super(id, name, color);
}