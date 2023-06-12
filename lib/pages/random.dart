import 'dart:math';
import 'package:wmn_team_three/youtube api/ytSad.dart'; 
import 'package:wmn_team_three/youtube api/ytHappy.dart'; 


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


