import 'package:flutter/material.dart';

class ProviderFood extends ChangeNotifier {
  int _counterValue = 1;
  final String _text =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur adipiscing elit";
  bool _readMore = false;

  int get counterValue => _counterValue;
  String get text => _text;
  bool get readMore => _readMore;

  void decrement() {
    if (_counterValue > 0) {
      _counterValue = _counterValue - 1;
    }

    notifyListeners();
  }

  set readMore(bool value) {
    _readMore = !readMore;
    notifyListeners();
  }

  void increment() {
    _counterValue = _counterValue + 1;
    notifyListeners();
  }
}
