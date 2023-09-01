class Somar {
  late double? _numero1;
  late double? _numero2;

  double get n1 {
    return _numero1!;
  }

  double get n2 {
    return _numero2!;
  }

  set n1(double n1) {
    _numero1 = n1;
  }

  set n2(double n2) {
    _numero2 = n2;
  }

  Somar(
    this._numero1,
    this._numero2,
  );

  double somar() {
    return (_numero1! + _numero2!) / 2;
  }
}
