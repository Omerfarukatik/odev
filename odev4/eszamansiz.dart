import 'dart:io';

Future<void> main(List<String> args) async {
  List<int> list = await getIntegerListFromUser();

  List<int> modifiedList = await multiplyListByTwo(list);

  print('Değiştirilmiş Liste: $modifiedList');
}

Future<List<int>> getIntegerListFromUser() async {
  List<int> list = <int>[];

  stdout.write("Listenin içereceği eleman sayısı: ");
  var limit = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < limit; i++) {
    stdout.write("${i + 1}. Sayıyı Giriniz:");
    list.add(int.parse(stdin.readLineSync()!));
  }

  return list;
}

Future<List<int>> multiplyListByTwo(List<int> list) async {
  List<int> modifiedList = <int>[];

  for (var element in list) {
    int multipliedValue = await multiplyByTwo(element);
    modifiedList.add(multipliedValue);
  }

  return modifiedList;
}

Future<int> multiplyByTwo(int value) async {
  return value * 2;
}
