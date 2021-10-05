class NumberCounter {
   int _number = 0;

  int get number => _number;

  int incrementnumber() {
    _number += 2;
    return _number;
  }
}
