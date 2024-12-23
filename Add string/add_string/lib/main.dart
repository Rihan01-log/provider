import 'package:add_string/controller/provider.dart';
import 'package:add_string/view/home.dart';
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
      create: (context) => Addstring(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
