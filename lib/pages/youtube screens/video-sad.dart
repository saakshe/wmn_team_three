// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';



// class Sad extends StatefulWidget {
  
  
  
//   const Sad({Key? key}) : super(key: key);

//   @override
//   State<Sad> createState() => _Sad();
// }

// class _Sad extends State<Sad> {
//   YoutubePlayerController? _controller;

//   @override
//   void initState() {
//     super.initState();

//     _controller = YoutubePlayerController(
//       initialVideoId: 'yM594a-1wDA',
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: true,
//       ),
//     );
//   }

  
  
  
//   @override
//   Widget build(BuildContext context) {
//     return YoutubePlayerBuilder(
//       player: YoutubePlayer(
//         controller: _controller!,
//         showVideoProgressIndicator: true,
//         progressIndicatorColor: Colors.amber,
//         progressColors: ProgressBarColors(
//           playedColor: Colors.amber,
//           handleColor: Colors.amberAccent,
//         ),
        
//       ),
//       builder: (context, player) {
//         return Scaffold(
//            appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 47, 1, 70),
//         title: Text('Emotify'),
//     ),  
//           body: player,
//         );
//       },
//     );
//   }
// }