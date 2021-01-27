import 'package:flutter/material.dart';

class ForYou extends StatefulWidget {
  ForYou({Key key}) : super(key: key);

  @override
  _ForYouState createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
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