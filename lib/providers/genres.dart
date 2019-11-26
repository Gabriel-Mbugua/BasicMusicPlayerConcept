import 'package:flutter/material.dart';
import './genre.dart';

class Genres with ChangeNotifier{
  List<Genre> _items = [
    Genre(
      id: 'g1',
      title: "Rock",
      imageUrl: "https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg",
    ),
     Genre(
      id: 'g2',
      title: "Hip Hop",
      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg",
    ),
     Genre(
      id: 'g3',
      title: "Electronic",
      imageUrl: "https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg",
    ),
     Genre(
      id: 'g4',
      title: "Pop",
      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg",
    ),
  ];

  List<Genre> get items {
    return [..._items];
  }
}