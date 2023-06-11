// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'question cards/question.dart';


// class Intermediate extends StatefulWidget {
//   const Intermediate({super.key});

//   @override
//   State<Intermediate> createState() => _IntermediateState();
// }

// class _IntermediateState extends State<Intermediate> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//   width: 250.0,
//   child: DefaultTextStyle(
//     style: const TextStyle(
//       fontSize: 32.0,
//       fontWeight: FontWeight.bold,
//     ),
//     child: AnimatedTextKit(
//       animatedTexts: [
//         FadeAnimatedText('Let'),
//         FadeAnimatedText('Let us get started!'),
//         FadeAnimatedText('Lets begin!'),
//       ],
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) =>  Question2()),
//           );
//       },
//     ),
//   ),
// );
//   }
// }