import 'package:flutter/material.dart';

class LifeStyle extends StatefulWidget {
  LifeStyle({Key key}) : super(key: key);

  @override
  _LifeStyleState createState() => _LifeStyleState();
}

class _LifeStyleState extends State<LifeStyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('LifeStyle News'),
        ),
      ),
    );
  }
}