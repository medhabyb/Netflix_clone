import 'package:flutter/material.dart';

class Flimlists extends StatelessWidget {
  final String path;
  const Flimlists({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Card(child: InkWell(child: Image.asset(path)));
  }
}
