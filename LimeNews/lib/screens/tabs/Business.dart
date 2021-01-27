import 'package:flutter/material.dart';

class Business extends StatefulWidget {
  Business({Key key}) : super(key: key);

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
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
