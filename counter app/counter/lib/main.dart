import 'package:counter/home.dart';
import 'package:counter/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CouterDemo(),
      child: MaterialApp(
       home: Home(),
      ),
    );
    
  }
}
