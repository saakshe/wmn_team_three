import 'package:flutter/material.dart';
import 'question3.dart';
import 'main.dart';
import 'my-globals.dart' as globals;


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
                Text('Are ya winnin soon?',
                style: TextStyle(
                  fontSize: 30,
                  
                ),),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                 ),

                 SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    globals.happy ++;
              
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Question3()),
  );
                                   }, 
                                   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
       
                 child: Text('Yay')),
                 SizedBox(height: 10,),
                 ElevatedButton(onPressed: (){
               globals.sad ++;
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Question3()),
  );
                                   }, 
                                   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
       
                 child: Text('Nay')),

               ],
                    
             ),
           ),
         ),
    );
  }
}