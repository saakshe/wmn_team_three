// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:wmn_team_three/intermediate.dart';
// import 'package:wmn_team_three/main.dart';
// import 'package:wmn_team_three/random.dart';
// import 'package:wmn_team_three/video-happy.dart';

// class SwitchIt extends StatelessWidget {
//   const SwitchIt({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 47, 1, 70),
//         title: Text('Emotify'),
//     ),  
//     body: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text('Do you wanna answer prompts or try your luck with random numbers? pick one!!',
//             style: TextStyle(fontSize: 20,
//             ),),
            
//           SizedBox(height: 25,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//               ElevatedButton(onPressed: (){
//                             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>  Question()),
//               );
//                                            },
//                                            style: ElevatedButton.styleFrom(
//           backgroundColor: Color.fromARGB(255, 172, 237, 111),
//           foregroundColor: Colors.white,
//           shadowColor: Color.fromARGB(255, 78, 78, 78),
//           elevation: 5,
//         ),
//                      child: Text('Answer prompts!',
//                      style: TextStyle(
//                       color: Colors.black,
//                      ),
//                      ),
//                      ),
//                      SizedBox(width: 10,),
          
//                      ElevatedButton(onPressed: (){
//                             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>  Happy()),  
//               );
//                                            },
//                                            style: ElevatedButton.styleFrom(
//           backgroundColor: Color.fromARGB(255, 172, 237, 111),
//           foregroundColor: Colors.white,
//           shadowColor: Color.fromARGB(255, 78, 78, 78),
//           elevation: 5,
//         ),
//                      child: Text('Try my Luck!',
//                      style: TextStyle(
//                       color: Colors.black,
//                      ),
//                      ),
//                      ),
//             ],)
//           ],),
//       ),
//     )
//     );
//   }
// }