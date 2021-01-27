import 'package:flutter/material.dart';

class Relationship extends StatefulWidget {
  Relationship({Key key}) : super(key: key);

  @override
  _RelationshipState createState() => _RelationshipState();
}

class _RelationshipState extends State<Relationship> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Relationship News'),
        ),
      ),
    );
  }
}