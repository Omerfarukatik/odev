class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id {
    return _id;
  }
  String get brand {
    return _brand;
  }
  String get color {
    return _color;
  }
  double get price {
    return _price;
  }
  set id(int value) {
    _id = value;
  }
  set brand(String value) {
    _brand = value;
  }
  set color(String value) {
    _color = value;
  }
  set price(double value) {
    _price = value;
  }
}

void main() {
  Camera camera1 = Camera(1, 'Canon', 'siyah', 1000);
  Camera camera2 = Camera(2, 'Nikon', 'sarı', 2000);
  Camera camera3 = Camera(3, 'Sony', 'kırmızı', 3000);

  print('Kamera Detayları:');
  print('id: ${camera1.id}, marka: ${camera1.brand}, renk: ${camera1.color}, fiyat: \$${camera1.price}');
  print('id: ${camera2.id}, marka: ${camera2.brand}, renk: ${camera2.color}, fiyat: \$${camera2.price}');
  print('id: ${camera3.id}, marka: ${camera3.brand}, renk: ${camera3.color}, fiyat: \$${camera3.price}');
}
