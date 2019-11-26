import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/genre.dart';

class GenreItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // GenreItem({this.id, this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final genre = Provider.of<Genre>(context, listen: false);

    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Card(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: ExactAssetImage("assets/images/genre_item_image.jpg"),
                  fit: BoxFit.fill,
                ),
                // child: Image.asset("assets/images/genre_item_image.jpg", ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                genre.title,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ],
        ),
        // color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
