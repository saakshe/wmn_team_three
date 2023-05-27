import 'package:flutter/material.dart';
import 'question.dart';
import 'Home.dart';
import 'main.dart';
import 'third.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Image(image: AssetImage('assets/images/icon2.png'),
                ),
                Text('Music For Your Mood In Seconds',
                style: TextStyle(
                      fontSize: 30,
                      
                    ),),
                    
        
                     SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Thrid()),
          );
                                       },
                                       style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
                 child: Text('Next Next Next!'),),
             ]
          ),
        ),
      )
    );
  }
}
