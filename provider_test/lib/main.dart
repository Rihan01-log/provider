import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/home.dart';
import 'package:provider_test/provider/providerDemo.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Providerdemo(),
      child: MaterialApp(
        
        
        home:Home() ,
        
      ),
    );
  }
}