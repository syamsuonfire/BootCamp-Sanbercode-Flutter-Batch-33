class Lingkaran {
  double pi = 3.14;
  double? _jariJari;

  void set setJariJari(double jariJariBaru) {
    if (jariJariBaru < 0) {
      jariJariBaru *= -1;
    }
    this._jariJari = jariJariBaru;
  }

  double get getJariJari {
    return _jariJari!;
  }

  double luas() {
    return pi * _jariJari! * _jariJari!;
  }
}
