import 'package:flutter/material.dart';

class Song with ChangeNotifier {
  final String id;
  final String title;
  final String artist;
  final String genre;
  final String imageUrl;
  bool isFavourite;

  Song({
    @required this.id,
    @required this.title,
    @required this.artist,
    @required this.genre,
    @required this.imageUrl,
    this.isFavourite,
  });

  void toggleFavouriteStatus(){
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
