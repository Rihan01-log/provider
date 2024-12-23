import 'package:flutter/material.dart';

class Sumtest extends ChangeNotifier {
  int aa = 0;
  int b = 0;
  int sum = 0;

  void addSum(String num1, String num2) {
    aa = int.parse(num1);
    b = int.parse(num2);
    sum = aa + b;
    notifyListeners();
  }
}