import 'package:flutter/material.dart';
import 'package:music_player/providers/song.dart';

class Songs with ChangeNotifier {
  List<Song> _songs = [
    Song(
      id: 's1',
      title: 'Crushed Up',
      artist: 'Future',
      genre: 'Hip Hop',
      imageUrl: 'https://townsquare.media/site/812/files/2019/01/future-album-main.jpg?w=980&q=75',
      isFavourite: false,
    ),
    Song(
      id: 's2',
      title: 'ADD feat. Emilia Ali',
      artist: 'Dwilly',
      genre: 'Pop',
      imageUrl: 'https://d2tml28x3t0b85.cloudfront.net/tracks/artworks/000/839/351/original/1970c5.jpeg?1530579491',
      isFavourite: false,
    ),
    Song(
      id: 's3',
      title: 'Stand off',
      artist: 'Memba',
      genre: 'Rock',
      imageUrl: 'https://d2tml28x3t0b85.cloudfront.net/tracks/artworks/000/839/351/original/1970c5.jpeg?1530579491',
      isFavourite: true,
    ),
    Song(
      id: 's4',
      title: 'SunBurn',
      artist: 'Droeloe',
      genre: 'Electronic',
      imageUrl: 'https://t2.genius.com/unsafe/275x0/https%3A%2F%2Fimages.genius.com%2F7dc58e5a6f100d6f930e41a3e0c1b8c1.640x640x1.jpg',
      isFavourite: false,
    ),
    Song(
      id: 's5',
      title: 'Blank Space',
      artist: 'Taylor Swift',
      genre: 'Pop',
      imageUrl: 'https://d2tml28x3t0b85.cloudfront.net/tracks/artworks/000/839/351/original/1970c5.jpeg?1530579491',
      isFavourite: false,
    ),
    Song(
      id: 's6',
      title: 'Together',
      artist: 'Whethan',
      imageUrl: 'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/attachment_68585523.jpg?auto=format&q=60&fit=max&w=930',
      genre: 'Electronic',
      isFavourite: true,
    ),
    Song(
      id: 's7',
      title: 'Five months later',
      artist: 'Prince Fox',
      genre: 'Pop',
      imageUrl: 'https://d2tml28x3t0b85.cloudfront.net/tracks/artworks/000/839/351/original/1970c5.jpeg?1530579491',
      isFavourite: false,
    ),
  ];

  Song findById(String id){
    return _songs.firstWhere((song) => song.id == id);
  }

  List<Song> get songs {
    return [..._songs];
  }
}
