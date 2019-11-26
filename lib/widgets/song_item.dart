import 'package:flutter/material.dart';
import 'package:music_player/screens/song_detail_screen.dart';
import 'package:provider/provider.dart';
import '../providers/song.dart';
import 'package:expandable/expandable.dart';

class SongItem extends StatefulWidget {
  @override
  _SongItemState createState() => _SongItemState();
}

class _SongItemState extends State<SongItem> {
  bool _playing = false;
  // var _expanded = false;

  @override
  Widget build(BuildContext context) {
    final song = Provider.of<Song>(context);

    return Container(
      child: Card(
        elevation: 1,
        child: ExpandablePanel(
          header: ListTile(
            onTap: () {
              setState(() {
                _playing = !_playing;
              });
              Navigator.of(context).pushNamed(SongDetailScreen.routeName, arguments: song.id);
            },
            title: Text(song.title),
            subtitle: Text(song.artist),
            leading: !_playing
                ? CircleAvatar(
                    child: Icon(Icons.play_arrow),
                    backgroundColor: Theme.of(context).primaryColorLight,
                  )
                : CircleAvatar(
                    child: Icon(Icons.pause),
                    backgroundColor: Theme.of(context).primaryColorLight,
                  ),
          ),
          expanded: Container(
            margin: const EdgeInsets.all(10),
            // child: ListTile(
            //   title: Text("Share ${song.title} with your friends"),
            //   trailing: IconButton(
            //     onPressed: () {},
            //     icon: Icon(Icons.share),
            //   ),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Consumer<Song>(
                  builder: (ctx, song, _) => IconButton(
                    icon: Icon( song.isFavourite == true ?
                      Icons.favorite: 
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      song.toggleFavouriteStatus();
                    },
                  ),
                ),
                Text("Share this beat with 3 freinds to unlock"),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
