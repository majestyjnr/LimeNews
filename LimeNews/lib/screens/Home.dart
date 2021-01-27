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
                title: Text('Lime'),
                centerTitle: true,
                elevation: 0.5,
                bottom: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
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
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
             Me(),
            ],
          ),
        ),
      ),
    );
  }
}
