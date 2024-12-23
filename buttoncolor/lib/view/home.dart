import 'package:buttoncolor/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ButtonClickcolor>(
          
          builder: (context, value, child) => IconButton(
              iconSize: 50,
              color: value.buttonColor,
              onPressed: () {
                value.clickButton();
              },
              icon: Icon(Icons.star)),
        ),
      ),
    );
  }
}
