import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  Audio({Key key}) : super(key: key);

  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Audio News'),
        ),
      ),
    );
  }
}
