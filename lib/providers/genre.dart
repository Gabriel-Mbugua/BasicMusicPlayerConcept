import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Genre with ChangeNotifier{
  final String id;
  final String title;
  final String imageUrl;

  Genre({@required this.id, @required this.title, this.imageUrl});
}
