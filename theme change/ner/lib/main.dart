import 'package:flutter/material.dart';
import 'package:ner/controller/provider.dart';
import 'package:ner/view/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => changeColor(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
