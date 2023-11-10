enum Gender {
  male,
  female,
  others,
}

void main() {
  print('Cinsiyet Değerleri:');

  for (var gender in Gender.values) {
    print(gender.toString().split('.').last);
  }
}
