import 'package:flutter/material.dart';
import 'package:music_player/providers/songs.dart';
import 'package:provider/provider.dart';

class SongDetailWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final songId = ModalRoute.of(context).settings.arguments as String;
    final loadedSong = Provider.of<Songs>(
      context,
      listen: false,
    ).findById(songId);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Card(
              child: FittedBox(
                child: Image.network(loadedSong.imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        ListTile(
          title: Text(loadedSong.title),
          subtitle: Text(
            loadedSong.artist,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10),
          child: LinearProgressIndicator(
            value: 13.0,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.skip_previous),
              onPressed: () {},
              iconSize: 50,
            ),
            IconButton(
              icon: Icon(Icons.play_arrow),
              iconSize: 50,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.skip_next),
              iconSize: 55,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
