// basic loading page 
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 1, 70),
        title: Text('THREE'), //think of some fun name for the app 
        centerTitle: true,
        ),
         body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator()
            ],
          ),
        ),
    );
  }
}


