import 'package:flutter/material.dart';

class Addstring extends ChangeNotifier{
  String text1='';
  String text2='';
  String textSumm='';

  void addstr(String new1,String new2){
    text1=new1;
    text2=new2;
    textSumm='$text1 $text2';
    notifyListeners();
  }
}