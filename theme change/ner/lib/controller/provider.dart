import 'package:flutter/material.dart';

class changeColor extends ChangeNotifier{
  Color setColor=Colors.blue;
  void canges(){
  setColor=setColor==Colors.blue?Colors.green:Colors.red;
   notifyListeners();
  }
}