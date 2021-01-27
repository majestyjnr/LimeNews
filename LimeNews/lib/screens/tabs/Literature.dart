import 'package:flutter/material.dart';

class Literature extends StatefulWidget {
  Literature({Key key}) : super(key: key);

  @override
  _LiteratureState createState() => _LiteratureState();
}

class _LiteratureState extends State<Literature> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Literature News'),
        ),
      ),
    );
  }
}
