import 'lingkaran.dart';
import 'dart:io';

void main(List<String> args) {
  Lingkaran lingkaran = new Lingkaran();
  stdout.write("Masukkan nilai jari-jari : ");
  lingkaran.setJariJari = double.parse(stdin.readLineSync()!);

  print("Nilai jari-jari: ${lingkaran.getJariJari}");

  var output = lingkaran.luas();
  print(output);
}
