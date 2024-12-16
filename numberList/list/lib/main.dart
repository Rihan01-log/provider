import 'package:flutter/material.dart';
import 'package:list/home.dart';
import 'package:list/provider/provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Sumtest(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}