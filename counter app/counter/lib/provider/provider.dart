import 'package:flutter/material.dart';

class CouterDemo extends ChangeNotifier {
  int _count = 0;
  int get counter => _count;

  void icrease() {
    _count++;
    notifyListeners();
  }

  void decrease() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
