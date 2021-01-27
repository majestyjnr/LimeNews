import 'package:flutter/material.dart';

class Sport extends StatefulWidget {
  Sport({Key key}) : super(key: key);

  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Sport News'),
        ),
      ),
    );
  }
}
