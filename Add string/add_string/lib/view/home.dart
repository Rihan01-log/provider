import 'package:add_string/controller/provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final aCont = TextEditingController();
    final bCont = TextEditingController();
   
    return Scaffold(
      body: Consumer<Addstring>(
        
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: aCont,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(controller: bCont),
            ElevatedButton(
                onPressed: () {
                  value.addstr(aCont.text, bCont.text);
                },
                child: Text('ss')),
            Text(value.textSumm)
          ],
        ),
      ),
    );
  }
}
