import 'package:flutter/material.dart';
import 'package:music_player/providers/songs.dart';
import 'package:music_player/screens/authentication/register_screen.dart';
import 'package:music_player/screens/song_detail_screen.dart';
import 'package:provider/provider.dart';

import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/screens/authentication/login_screen.dart';
import './screens/song_detail_screen.dart';

import 'providers/genres.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String appTitle;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Genres(),
        ),
        ChangeNotifierProvider.value(
          value: Songs(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mellodis',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            accentColor: Colors.deepPurpleAccent,
            fontFamily: "DarkerGrotesque",
              
            ),
        home: MyHomePage(),
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
          RegisterScreen.routeName: (ctx) => RegisterScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(appTitle),
          SongDetailScreen.routeName: (ctx) => SongDetailScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}
