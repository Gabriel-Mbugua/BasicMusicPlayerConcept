import 'package:flutter/material.dart';
import 'package:music_player/providers/songs.dart';
import 'package:music_player/widgets/genre_item.dart';
import 'package:music_player/widgets/song_item.dart';
import '../providers/genres.dart';
import 'package:provider/provider.dart';

class GenreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final genreData = Provider.of<Genres>(context);
    final genres = genreData.items;
    final songsData = Provider.of<Songs>(context);
    final songs = songsData.songs;

    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            itemCount: genres.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: genres[i],
              child: GenreItem(),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          // height: MediaQuery.of(context).size.height * 0.8,
          child: Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: songs[i],
                child: SongItem(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
