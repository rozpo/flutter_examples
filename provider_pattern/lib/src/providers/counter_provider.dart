import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter += 1;
    notifyListeners();
  }
}
