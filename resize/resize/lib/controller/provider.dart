import 'package:flutter/material.dart';

class Resize extends ChangeNotifier {
  bool size = false;

  void resizeCont() {
    size = !size;
    notifyListeners();
  }
}
