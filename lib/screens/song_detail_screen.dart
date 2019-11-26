import 'package:flutter/material.dart';
import 'package:music_player/providers/song.dart';
import 'package:music_player/providers/songs.dart';
import 'package:music_player/widgets/song_detail_widget.dart';
import 'package:provider/provider.dart';

class SongDetailScreen extends StatelessWidget {
  static const routeName = "/song_detail";

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SongDetailWidget(),
    );
  }
}
