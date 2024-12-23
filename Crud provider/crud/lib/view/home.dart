import 'package:crud/view/add.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (ctx)=>Add()));
      },),
    );
  }
}