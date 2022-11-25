// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RelaxSongsPage extends StatefulWidget {
  const RelaxSongsPage({Key? key}) : super(key: key);

  @override
  State<RelaxSongsPage> createState() => _RelaxSongsPageState();
}

class _RelaxSongsPageState extends State<RelaxSongsPage> {
  late YoutubePlayerController _controller;

  List<String> _nature = [
    'Nd7e4SNjGBM',
    'mPZkdNFkNps',
    'vPhg6sc1Mk4',
    'pjtsGzQjFM4'
  ];

  List<String> _music = [
    'soRmpPJOIwo',
    'jgpJVI3tDbY',
    'vZsRWIVERLc',
    'XcPnhGhDGL8'
  ];

  List<String> _meditation = [
    'J0bBVeqlQfM',
    '22i6SofLVRY',
    'eyUUMjqUvVk',
    '263Vb6xiifo'
  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: false,
        loop: false,
      ),
    )..onInit = () {
        _controller.loadPlaylist(
          list: _nature,
          index: 0,
          listType: ListType.playlist,
          startSeconds: 0,
        );
      };
  }

  @override
  void dispose() {
    setState(() {
      _controller.stopVideo();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          YoutubePlayerControllerProvider(
            controller: _controller,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _controller.loadPlaylist(list: _nature);
                  },
                  child: Text("Naturaleza"),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.loadPlaylist(list: _music);
                  },
                  child: Text("Música"),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.loadPlaylist(list: _meditation);
                  },
                  child: Text("Meditación"),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          YoutubePlayer(controller: _controller),
          SizedBox(height: 10.0),
          YoutubePlayerControllerProvider(
            controller: _controller,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _controller.nextVideo();
                  },
                  child: Text("Anterior"),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    _controller.nextVideo();
                  },
                  child: Text("Siguiente"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
