import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'main.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:opencv_4/opencv_4.dart';
import 'second.dart';
import 'main.dart';



class Home extends StatelessWidget {
 
   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 47, 1, 70),
      //   title: Text('Emotify'),
    // ),  

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
                Text('Getting Things Ready For You!',
                style: TextStyle(
                  fontSize: 30,
                  
                ),),

                 SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Second()),
  );
                                   }, 
                                   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 172, 237, 111),
      foregroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 78, 78, 78),
      elevation: 5,
    ),
                 child: Text('Woohoo!'))
               ],
                    
             ),
           ),
         ),
    );
  }
}


