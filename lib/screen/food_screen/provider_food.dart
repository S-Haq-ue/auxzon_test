import 'package:flutter/material.dart';

class ProviderFood extends ChangeNotifier {
  int _counterValue = 1;

  int get counterValue => _counterValue;

  void decrement() {
    if (_counterValue > 0) {
      _counterValue = _counterValue - 1;
    }

    notifyListeners();
  }

  void increment() {
    _counterValue = _counterValue + 1;
    notifyListeners();
  }

}
