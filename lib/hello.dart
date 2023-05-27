import 'package:flutter/material.dart';
import 'question3.dart';
import 'package:lottie/lottie.dart';


class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //add a loader stating that your music is being loaded 
      body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Lottie.asset('assets/loader.json'),
                Text('Crafting your playlist!',
                style: TextStyle(
                  fontSize: 30,
                ),),
               ],
                    
             ),
           ),
         ),
    );
  }
}