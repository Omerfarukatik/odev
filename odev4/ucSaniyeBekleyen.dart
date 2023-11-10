import 'dart:io';
import 'dart:async';

Future<void> main() async {
  print('İlk sayıyı girin:');
  int number1 = int.parse(stdin.readLineSync()!);

  print('İkinci sayıyı girin:');
  int number2 = int.parse(stdin.readLineSync()!);

  print('3 saniye bekleniyor...');
  await Future.delayed(Duration(seconds: 3));

  int sum = number1 + number2;

  // Toplamı yazdırın
  print('Toplam: $sum');
}
