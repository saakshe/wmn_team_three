// basic loading page 
//import 'dart:html';

import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wmn_team_three/models/channel_info.dart';
import 'package:wmn_team_three/models/videos_List.dart';
import 'package:wmn_team_three/utilities/Services.dart';

import 'package:wmn_team_three/models/videos_list.dart';
import 'package:wmn_team_three/video_player_screen.dart';


class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
  }

class _HomeScreenState extends State<HomeScreen> {

  late Channelnfo _channelnfo;
  late VideosList _videosList;
  late Item _item;
  bool _loading=true;
  late String _playListId;//added late modifier!!!!
  late String _nextPageToken;
  late List<VideoItem> videos;
  // late String kind;
  // late String etag;
  // late PageInfo pageInfo;



  @override
  void initState(){
    super.initState();


   // _videosList = VideosList(kind: kind, etag: etag, nextPageToken: nextPageToken, videos: videos, pageInfo: pageInfo);
   // _videosList.videos= List(kind: kind, etag: etag, id: id, video: video);
    _videosList.videos = videos;
    _nextPageToken='';
    //_loadVideos();
    _getChannelInfo();
  }

  _getChannelInfo()async{
    //print('LOLLLLLL');
    _channelnfo= await Services.getChannelnfo();
    _item=_channelnfo.items[0];
    setState(() {
      _loading=false;
    });
    _playListId=_item.contentDetails.relatedPlaylists.uploads;
    print('_playListID $_playListId');

  }

  _loadVideos() async {


    VideosList tempVideosList = await Services.getVideosList(
      playListId: _playListId,
      pageToken: _nextPageToken,
    );
    _nextPageToken = tempVideosList.nextPageToken;
    _videosList.videos.addAll(tempVideosList.videos);
    print('videos: ${_videosList.videos.length}');
    print('_nextPageToken $_nextPageToken');
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 1, 70),
        title: Text('EMOTIFY'), //think of some fun name for the app
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            _buildInfoView(),
            ListView.builder(
    itemCount: _videosList.videos.length,
    itemBuilder: (context, index) {
    videos videoItem = _videosList.videos[index];
    return InkWell(
    onTap: () async {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) {
    return VideoPlayerScreen(
    videoItem: videoItem,
    );
    }));
    },
    child: Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
    children: [
    CachedNetworkImage(
    imageUrl: videoItem
        .video.thumbnails.thumbnailsDefault.url,
    ),
    SizedBox(width: 20),
    Flexible(child: Text(videoItem.video.title)),
    ],
    ),
    ),
    );
    },
            ),
          ],
        ),
      ),
    );
}


_buildInfoView(){
    return _loading?CircularProgressIndicator():
    Container(
        padding: const EdgeInsets.all(20.0),
      child:Card(
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              _item.snippet.thumbnails.medium.url,
            ),
          ),
          SizedBox(width: 20),
            Expanded(
              child: Text(
                _item.snippet.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(_item.statistics.videoCount),
            SizedBox(width: 20),
          ],

        ),
      ) ,
  )
    );
}

}




 /* @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }*/


