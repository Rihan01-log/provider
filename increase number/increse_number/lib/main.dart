import 'package:flutter/material.dart';
import 'package:increse_number/controller/provider.dart';
import 'package:increse_number/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Listnumber(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
