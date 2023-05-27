import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:opencv_4/opencv_4.dart';
import 'Home.dart';

late List<CameraDescription> cameras;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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