import 'package:flutter/material.dart';
import 'package:ner/controller/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Consumer<changeColor>(
          builder: (context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  value.canges();
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: value.setColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
