import 'package:flutter/material.dart';
import 'package:list/provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final aCtls = TextEditingController();
    final bCtls = TextEditingController();
    final sum = Provider.of<Sumtest>(context);
    return Scaffold(
      body: Center(
        child: Consumer<Sumtest>(
          builder: (context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: aCtls,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: bCtls,
              ),
              ElevatedButton(
                onPressed: () {
                  sum.addSum(aCtls.text, bCtls.text);
                },
                child: Text('add'),
              ),
              Text('${value.sum}')
            ],
          ),
        ),
      ),
    );
  }
}
