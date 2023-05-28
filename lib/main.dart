import 'package:flutter/material.dart';
import 'House.dart';



void main() async {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Main(),

    );
  }
}


class Main extends StatelessWidget {
  
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    
    // this will be used to manage the difference screens being displayed 
    return Scaffold(
      body: Home(),
    );
  }
}