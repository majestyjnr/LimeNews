import 'package:LimeNews/screens.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool innerBoxIsScrolled = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage('images/solo.jpeg'),
                ),
                title: Text(
                  'Lime',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 0.5,
                bottom: TabBar(
                  isScrollable: true,
                  labelColor: Colors.grey,
                  tabs: <Widget>[
                    Tab(
                      text: 'FOLLOW',
                    ),
                    Tab(
                      text: 'FOR YOU',
                    ),
                    Tab(
                      text: 'NEWS',
                    ),
                    Tab(
                      text: 'AUDIO',
                    ),
                    Tab(
                      text: 'LITERATURE',
                    ),
                    Tab(
                      text: 'ENTERTAINMENT',
                    ),
                    Tab(
                      text: 'RELATIONSHIP',
                    ),
                    Tab(
                      text: 'SPORT',
                    ),
                    Tab(
                      text: 'LIFESTYLE',
                    ),
                    Tab(
                      text: 'BEAUTY',
                    ),
                    Tab(
                      text: 'BUSINESS',
                    ),
                    Tab(
                      text: 'TECHNOLOGY',
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Follow(),
              ForYou(),
              News(),
              Audio(),
              Literature(),
              Entertainment(),
              Relationship(),
              Sport(),
              LifeStyle(),
              Beauty(),
              Business(),
              Technology(),
            ],
          ),
        ),
      ),
    );
  }
}
