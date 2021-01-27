import 'package:flutter/material.dart';

class Beauty extends StatefulWidget {
  Beauty({Key key}) : super(key: key);

  @override
  _BeautyState createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Beauty News'),
        ),
      ),
    );
  }
}
