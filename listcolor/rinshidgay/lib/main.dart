import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinshidgay/controller/provider.dart';
import 'package:rinshidgay/view/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Listcolor(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}