import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  Follow({Key key}) : super(key: key);

  @override
  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Follow'),
        ),
      ),
    );
  }
}
