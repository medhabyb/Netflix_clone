import 'package:flutter/material.dart';

import '../../../../core/Class/films.dart';

class FilmItem extends StatelessWidget {
  final Films f;
  const FilmItem({super.key, required this.f});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 150,
                width: 80,
                margin: EdgeInsets.only(left: 5, right: 20),
                child: Image.asset(f.path!)),
            Text(
              f.filmName!,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ));
  }
}
