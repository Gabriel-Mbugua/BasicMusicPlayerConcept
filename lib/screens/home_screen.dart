import 'package:flutter/material.dart';
import 'package:music_player/providers/genres.dart';
import 'package:music_player/widgets/browse_screen_widget.dart';
import 'package:music_player/widgets/genre_item.dart';
import 'package:music_player/widgets/genre_list.dart';
import 'package:music_player/widgets/home_screen_widget.dart';
import 'package:music_player/widgets/search_screen_widget.dart';
import 'package:music_player/widgets/suggestions_screen_widget.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  String appTitle;

  HomeScreen(this.appTitle);

  static const routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  int _cIndex = 0;

  void incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  String appTitle = "Music Player";

  @override
  Widget build(BuildContext context) {
    final genreData = Provider.of<Genres>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (_) {},
            icon: Icon(Icons.settings),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Account"),
              ),
            ],
          )
        ],
      ),
      body: _cIndex == 0
          ? HomeScreenWidget()
          : _cIndex == 1
              ? SuggestionsScreenWidget()
              : _cIndex == 2 ? BrowseScreenWidget() : SearchScreenWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text("Suggestions"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            title: Text("Browse"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
        ],
        onTap: (index) {
          incrementTab(index);
        },
      ),
    );
  }
}
