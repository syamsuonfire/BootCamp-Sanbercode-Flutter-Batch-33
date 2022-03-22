class Segitiga {
  double? _setengah;
  double? _alas;
  double? _tinggi;

  Segitiga(double setengah, double alas, double tinggi) {
    this._setengah = setengah;
    this._alas = alas;
    this._tinggi = tinggi;
  }

  luasSegitiga() {
    return _setengah! * _alas! * _tinggi!;
  }
}

void main(List<String> args) {
  Segitiga segitiga = new Segitiga(0.5, 20.0, 30.0);

  var output = segitiga.luasSegitiga();

  print(output);
}
