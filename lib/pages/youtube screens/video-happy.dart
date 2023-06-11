import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class Happy extends StatefulWidget {
  
  
  
  const Happy({Key? key}) : super(key: key);

  @override
  State<Happy> createState() => _Happy();
}

class _Happy extends State<Happy> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'CHrR-0aOo24',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }

  
  
  
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        
      ),
      builder: (context, player) {
        return Scaffold(
             appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 1, 70),
        title: Text('Emotify'),
    ),  
          body: player,
        );
      },
    );
  }
}