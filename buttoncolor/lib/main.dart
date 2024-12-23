import 'package:buttoncolor/controller/provider.dart';
import 'package:buttoncolor/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ButtonClickcolor(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
