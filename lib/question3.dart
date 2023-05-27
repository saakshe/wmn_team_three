import 'package:flutter/material.dart';
import 'hello.dart';
import 'my-globals.dart' as globals;



class Question3 extends StatefulWidget {
   Question3({super.key});


  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {


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
                Text('Rate Your Mood',
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
    MaterialPageRoute(builder: (context) => const Hello()),
  );
                                   }, 
                                   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
       
                 child: Text('5+')),
                 SizedBox(height: 10,),
                 ElevatedButton(onPressed: (){
                  globals.sad ++;
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Hello()),
  );
                                   }, 
                                   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
       
                 child: Text('5-')),

               ],
                    
             ),
           ),
         ),
    );
  }
}