import 'package:flutter/material.dart';

class ButtonClickcolor extends ChangeNotifier {
  Color buttonColor = Colors.black;

  void clickButton() {
    buttonColor = buttonColor == Colors.black ? Colors.blue : Colors.green;
    notifyListeners();
  }
}
