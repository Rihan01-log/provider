import 'package:flutter/material.dart';

class Colorchange extends ChangeNotifier {
  Color circle = Colors.black;

  void red() {
    circle = Colors.red;
    notifyListeners();
  }

  void green() {
    circle = Colors.green;
    notifyListeners();
  }
}
