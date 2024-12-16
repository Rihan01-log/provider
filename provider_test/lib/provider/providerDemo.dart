import 'package:flutter/material.dart';

class Providerdemo with ChangeNotifier {
  String text = 'hello';
  void buttonClick(String value) {
    text = value;
    notifyListeners();
  }
}
