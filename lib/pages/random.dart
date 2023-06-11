import 'dart:math';
import 'youtube screens/video-happy.dart';
import 'youtube screens/video-sad.dart';


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


