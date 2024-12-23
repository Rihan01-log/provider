import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resize/controller/provider.dart';
import 'package:resize/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Resize(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
