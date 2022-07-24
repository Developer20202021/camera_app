import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drawer_app/keys/key.dart';
import 'package:drawer_app/keys/services.dart';
import 'package:drawer_app/models/channels_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:youtube_api/youtube_api.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: VideoList(),
    );
  }
}

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {



  final List<YoutubePlayerController> _controllers = [
    'gQDByCdjUXw',
    'x55ZduHzCRI',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
    'x55ZduHzCRI'
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();



  

  @override
  void initState() {
    
  

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video List Demo'),
      ),
      body: ListView.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    YoutubePlayer(
                      controller: _controllers[index],
                      
                      
                      actionsPadding: const EdgeInsets.only(left: 16.0),
                      bottomActions: [
                        CurrentPosition(),
                        const SizedBox(width: 10.0),
                        ProgressBar(isExpanded: true),
                        const SizedBox(width: 10.0),
                        RemainingDuration(),
                        FullScreenButton(),
                        PlaybackSpeedButton(),
                        PlayPauseButton()
                      ],
                    ),
                  ],
                );
              },
              itemCount: _controllers.length,
              separatorBuilder: (context, _) => const SizedBox(height: 10.0),
            ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("ggjg"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
              trailing: Icon(Icons.arrow_right_alt_outlined),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Text(
                    "H",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
