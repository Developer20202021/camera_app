import 'dart:io';

import 'package:drawer_app/keys/key.dart';
import 'package:http/http.dart' as http;

import '../models/channels_info.dart';

class Services {
  static const channelId = "UCLxcJIwMXyoMF-yIHNg3rhQ";
  static const baseUrl = "www.youtube.googleapis.com";

  //   'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails&id=UCLxcJIwMXyoMF-yIHNg3rhQ&access_token=%22AIzaSyCaEmnrwjmdx6W2qFSOAhmxDWx4I90R3qk&key=[YOUR_API_KEY]' \
  // --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
  // --header 'Accept: application/json' \
  // --compressed

  static Future<Welcome> getChannelInfo() async {
    Map<String, String> parameters = {
      "part": "snippet,contentDetails",
      "id": channelId,
      "key": API_KEY
    };

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json"
    };

    Uri uri = Uri.https(baseUrl, '/youtube/v3/channels', parameters);
    http.Response response = await http.get(uri, headers: headers);

    print(response.body);

    Welcome chanelInfo = welcomeFromJson(response.body);

    return chanelInfo;
  }
}
