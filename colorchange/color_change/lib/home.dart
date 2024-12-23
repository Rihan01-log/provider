import 'package:color_change/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<Colorchange>(
          builder: (context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: value.circle,
              ),
              ElevatedButton(
                  onPressed: () {
                    value.red();
                  },
                  child: Text('red')),
              ElevatedButton(
                  onPressed: () {
                    value.green();
                  },
                  child: Text('green'))
            ],
          ),
        ),
      ),
    );
  }
}
