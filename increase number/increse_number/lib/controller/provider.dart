import 'package:flutter/material.dart';

class Listnumber extends ChangeNotifier {
  List<int> number = [1];

  void addList() {
    int a = number.last;
    number.add(a + 1);
    notifyListeners();
  }

  void removeList() {
    number.removeLast();
    notifyListeners();
  }
}
