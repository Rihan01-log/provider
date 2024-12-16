import 'package:counter/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CouterDemo>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CouterDemo>(
              builder: (context, value, child) {
                return Text('${value.counter}');
              },
            ),
            IconButton(
                onPressed: () {
                  counter.icrease();
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  counter.decrease();
                },
                icon: Icon(Icons.exposure_minus_1)),
            IconButton(
                onPressed: () {
                  counter.reset();
                },
                icon: Icon(Icons.restore)),
          ],
        ),
      ),
    );
  }
}
