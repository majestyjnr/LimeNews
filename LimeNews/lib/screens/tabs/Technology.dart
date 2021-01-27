import 'package:flutter/material.dart';

class Technology extends StatefulWidget {
  Technology({Key key}) : super(key: key);

  @override
  _TechnologyState createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Technology News'),
        ),
      ),
    );
  }
}
