class Titan {
  int? _powerPoint;

  void set setPower(int value) {
    if (value <= 5) {
      value = 5;
    }
    _powerPoint = value;
  }

  int get getPower {
    return _powerPoint!;
  }
}
