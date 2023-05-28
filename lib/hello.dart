import 'package:flutter/material.dart';
import 'package:wmn_team_three/video-happy.dart';
import 'package:wmn_team_three/video-sad.dart';
import 'question3.dart';
import 'package:lottie/lottie.dart';
import 'my-globals.dart' as globals;


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

                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                          if(globals.happy > globals.sad) {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Happy()),  
            );}
            else {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Sad()),  
            );
            }
                                         },
                                         style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 172, 237, 111),
        foregroundColor: Colors.white,
        shadowColor: Color.fromARGB(255, 78, 78, 78),
        elevation: 5,
      ),
                   child: Text('Go To My Music',
                   style: TextStyle(
                    color: Colors.black,
                   ),
                   ),
                   ),
               ],
             ),
           ),
         ),
    );
  }
}