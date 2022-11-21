import 'package:flutter/material.dart';
import 'continue.dart';

class Continue extends StatelessWidget {
  final String path;
  const Continue({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(child: Image.asset(path)),
      Container(
        margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
        child: Icon(
          Icons.play_arrow_outlined,
          size: 20,
          color: Colors.white,
        ),
      ),
    ]);
  }
}
