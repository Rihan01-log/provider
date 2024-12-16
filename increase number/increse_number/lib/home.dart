import 'package:flutter/material.dart';
import 'package:increse_number/controller/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Listnumber>(context, listen: false).addList();
        },
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Provider.of<Listnumber>(context).number.length,
              itemBuilder: (context, index) {
                return Text(
                  Provider.of<Listnumber>(context).number[index].toString(),
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<Listnumber>(context, listen: false).removeList();
            },
            child: Icon(Icons.minimize),
          )
        ],
      )),
    );
  }
}
