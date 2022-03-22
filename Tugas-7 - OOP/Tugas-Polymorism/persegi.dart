import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  double? _sisi;

  Persegi(double sisi) {
    this._sisi = sisi;
  }

  double luas() {
    return _sisi! * _sisi!;
  }

  double keliling() {
    return 4 * _sisi!;
  }
}
