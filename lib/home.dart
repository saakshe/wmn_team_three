import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'main.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:opencv_4/opencv_4.dart';
import 'states.dart';



class Home extends StatefulWidget {
 
   Home({super.key, required this.texttext});
   String texttext;
   

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      backgroundColor: Color.fromARGB(45, 60, 60, 60),
    //   appBar: AppBar(
    //     backgroundColor: Color.fromARGB(255, 47, 1, 70),
    //     title: Text('Emotify'),
    // ),  

         body: Column(
           children: [
            Image(image: AssetImage('assets/images/icon2.png'),
            ),
            Text('Getting Things Ready For You',
            style: TextStyle(
              fontSize: 48,
            ),),
             Padding(
               padding: const EdgeInsets.all(10.0),
             ),
             ElevatedButton(onPressed: (){
              Second();
             }, 
             child: Text('Next'))

           ],
         ),
         
    );
  }
}


