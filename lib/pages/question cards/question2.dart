import 'package:flutter/material.dart';
import 'package:wmn_team_three/pages/hello.dart';
import 'package:wmn_team_three/pages/question%20cards/question3.dart';
// import '../question3.dart';
import '../../main.dart';
import '../my-globals.dart' as globals;


class Question2 extends StatefulWidget {
   Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
   
}


class _Question2State extends State<Question2> {

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
                SizedBox(height: 15,),
                Text('Are ya winnin son?',
                 style: TextStyle(
                  fontSize: 20,
                  
                ),
                ),

                 SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      ElevatedButton(onPressed: (){
                        globals.happy ++;
              
                        Navigator.of(context).push(_createRoute());
                                       }, 
                                       style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
       
                 child: Text('Yay',
                 style: TextStyle(
                      color: Colors.black,
                 ),)),
                    
                 SizedBox(width: 10,),
                 ElevatedButton(onPressed: (){
               globals.sad ++;
                    Navigator.of(context).push(_createRoute());
                                   }, 
                                   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
       
                 child: Text('Nay', 
                 style: TextStyle(
                  color: Colors.black,
                 ),),),

               ],
                    
             ),
             ],
                  ),
           ),
         ),
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  Question3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}