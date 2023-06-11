import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wmn_team_three/pages/intermediate.dart';
import 'package:wmn_team_three/pages/question%20cards/question1.dart';
import 'package:wmn_team_three/pages/question%20cards/question2.dart';
import 'package:wmn_team_three/pages/unused%20pages/third.dart';
import 'package:lottie/lottie.dart';
import 'unused pages/third.dart';



class Home extends StatefulWidget {
 
   Home({super.key, });
   

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold (
    //   appBar: AppBar(
    //     backgroundColor: Color.fromARGB(255, 47, 1, 70),
    //     title: Text('Emotify'),
    // ),  

         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Center( 
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                // Image(image: AssetImage('assets/images/icon2.png'),
                // ),
                // Text('Getting Things Ready For You',
                // style: TextStyle(
                //   fontSize: 20,
                // ),),

                Lottie.asset('assets/loader2.json'),
                Text('The Vibe Is On Us!',
                style: TextStyle(
                      fontSize: 20,
                      
                    ),),


                 SizedBox(height: 20,),
                 ElevatedButton(onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Question1()),
              );
                 }, 
                 style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 172, 237, 111),
                 foregroundColor: Colors.white,
                 shadowColor: Color.fromARGB(255, 78, 78, 78),
                 elevation: 5,
               ),
                 child: Text('Jump In!',
                 style: TextStyle(
                      color: Colors.black,
                     ),),
                 )
           
               ],
             ),
           ),
         ),
         
    );
  }
}


