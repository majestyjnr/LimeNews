import 'package:flutter/material.dart';

class News extends StatefulWidget {
  News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('News'),
        ),
      ),
    );
  }
}