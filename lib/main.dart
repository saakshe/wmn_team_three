import 'package:flutter/material.dart';
import 'package:wmn_team_three/video-happy.dart';
import 'House.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() async {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Main(),

    );
  }
}


class Main extends StatelessWidget {
  
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    
    // this will be used to manage the difference screens being displayed 
    return Scaffold(
      body: Home(),
    );
  }
}