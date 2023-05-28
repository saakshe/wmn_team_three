import 'dart:io';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:wmn_team_three/models/videos_list.dart';
import 'package:wmn_team_three/utilities/Constants.dart';

import '../models/channel_info.dart';




class Services{
  //
  static const String CHANNEL_ID='UC5lbdURzjB0irr-FTbjWN1A';
  static const baseUrl='www.googleapis.com';




      /*curl \
  'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&id=UCSY5V7BJSrxNvvBF0Drslow&access_token=AIzaSyAt6ToFYaAOUNgDOzolTQvyponk18MjU9I&key=[YOUR_API_KEY]' \
  --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
  --header 'Accept: application/json' \
  --compressed
*/

static Future<Channelnfo> getChannelnfo()async{
  Map<String, String> parameters={
    'part': 'snippet,contentDetails,statistics',
    'id':CHANNEL_ID,
    'key' : Constants.API_KEY,

  };
  Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/json',
  };

  Uri uri= Uri.https(
    baseUrl,
    '/youtube/v3/channels',
    parameters,
  );

  Response response = await http.get(uri, headers: headers);
   //print(response.body);
  Channelnfo channelnfo = channelnfoFromJson(response.body);
  return channelnfo;


}

  static Future<VideosList> getVideosList(
      {required String playListId, required String pageToken}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playListId,
      'maxResults': '8',
      'pageToken': pageToken,
      'key': Constants.API_KEY,
    };
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    Uri uri = Uri.https(
      baseUrl,
      '/youtube/v3/playlistItems',
      parameters,
    );
    Response response = await http.get(uri, headers: headers);
    // print(response.body);
    VideosList videosList = videosListFromJson(response.body);
    return videosList;
  }
}





