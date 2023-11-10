import 'dart:math';

int? createdRandom() {
  return Random().nextBool() ? 100 : null;
}

void main() {
  int? status = createdRandom() ?? 0;

  print('Status: $status');
}
