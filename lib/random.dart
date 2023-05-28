import 'dart:math';
import 'package:wmn_team_three/video-happy.dart';
import 'package:wmn_team_three/video-sad.dart';


import 'my-globals.dart' as globals; 

void main() {
  var doubleValue = Random().nextInt(1);
  if(doubleValue == 0) {
    Happy();
    }
  else {
    Sad();
  }
}


