import 'package:flutter/material.dart';

import 'genre_list.dart';


class HomeScreenWidget extends StatefulWidget {
  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        // height: double.infinity,
        // height: MediaQuery.of(context).size.height * 0.2,
        child: GenreList(),
      );
  }
}