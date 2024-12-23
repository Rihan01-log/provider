import 'package:flutter/material.dart';

class Listcolor extends ChangeNotifier{
  int ind=0;
  List des=[Colors.red,Colors.green,Colors.yellow,Colors.purple,Colors.blue];

  void change(){
    ind=(ind+1)%des.length;
    notifyListeners();
  }
}