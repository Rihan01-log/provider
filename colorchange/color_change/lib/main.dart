import 'package:color_change/controller/provider.dart';
import 'package:color_change/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Colorchange(),
      child: MaterialApp(
        home: Home(),
      ));
  }
}