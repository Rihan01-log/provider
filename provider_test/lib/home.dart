import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/providerDemo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Providerdemo>(
              builder: (context, value, child) {
                return Text(value.text);
              },
            ),
            
            ElevatedButton(
                onPressed: () {
                  Provider.of<Providerdemo>(context, listen: false)
                      .buttonClick('hellorihan');
                },
                child: Text('change'))
          ],
        ),
      ),
    );
  }
}
