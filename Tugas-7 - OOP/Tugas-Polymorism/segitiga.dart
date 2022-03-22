import 'dart:math';

import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  double? _alas;
  double? _tinggi;

  Segitiga(double alas, double tinggi) {
    this._alas = alas;
    this._tinggi = tinggi;
  }

  double luas() {
    return 0.5 * _alas! * _tinggi!;
  }

  double keliling() {
    double s = sqrt((_alas! * _alas!) + (_tinggi! * _tinggi!));
    return s + _alas! + _tinggi!;
  }
}
