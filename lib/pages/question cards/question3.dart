import 'package:flutter/material.dart';
import '../hello.dart';
import '../my-globals.dart' as globals;



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
                  fontSize: 20,
                  
                ),),
              

                 SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
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
       
                 child: Text('5+',
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
       
                 child: Text('5-',
                 style: TextStyle(
                  color: Colors.black,
                 ),)),

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
    pageBuilder: (context, animation, secondaryAnimation) =>  Hello(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}