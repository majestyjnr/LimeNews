import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForYou extends StatefulWidget {
  ForYou({Key key}) : super(key: key);

  @override
  _ForYouState createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: double.infinity,
              child: ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Donald Trump stands a chance of being tried and impeached for insurrection.',
                            maxLines: 1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage('images/trump.jpg'),
                            height: 50,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Spacer(),
                          IconButton(
                            icon: Icon(FontAwesomeIcons.shareAlt),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
