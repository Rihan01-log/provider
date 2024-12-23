import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resize/controller/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final pres = Provider.of<Resize>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Consumer<Resize>(
            builder: (context, value, child) => Container(
              height: value.size ? 200 : 100,
              width: value.size ? 300 : 200,
              color: Colors.blue,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                pres.resizeCont();
              },
              child: Text('click'))
        ]),
      ),
    );
  }
}
