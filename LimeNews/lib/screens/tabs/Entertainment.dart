import 'package:flutter/material.dart';

class Entertainment extends StatefulWidget {
  Entertainment({Key key}) : super(key: key);

  @override
  _EntertainmentState createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Entertainment News'),
        ),
      ),
    );
  }
}