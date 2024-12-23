import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinshidgay/controller/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Listcolor>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: value.des.elementAt(value.ind),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    value.change();
                  },
                  child: Text('click')),
            )
          ],
        ),
      ),
    );
  }
}
