import 'package:flutter/material.dart';
import 'package:wmn_team_three/intermediate.dart';
import 'package:wmn_team_three/switch.dart';
import 'question.dart';
import 'House.dart';
import 'main.dart';
import 'second.dart';


class Thrid extends StatelessWidget {
  const Thrid({super.key});

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
                Text('The Vibe Is On Us!',
                style: TextStyle(
                      fontSize: 20,
                      
                    ),),
                     
        
                     SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  SwitchIt()),
          );
                                       },
                                       style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
                 child: Text('Lesssgo',
                 style: TextStyle(
                  color: Colors.black,
                 ),),),
             ]
          ),
        ),
      )
    );
  }
}