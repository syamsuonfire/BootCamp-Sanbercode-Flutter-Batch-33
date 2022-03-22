import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  double? _r;
  double _pi = 3.14;

  Lingkaran(double r) {
    this._r = r;
  }

  double luas() {
    return _pi * _r! * _r!;
  }

  double keliling() {
    return 2 * _pi * _r!;
  }
}
