import 'package:LimeNews/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      initialIndex: 1,
      length: 12,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      _openBottomSheet();
                    },
                    child: CircleAvatar(
                      maxRadius: 20,
                      backgroundImage: AssetImage('images/solo.jpeg'),
                    ),
                  ),
                ),
                title: Text(
                  'Lime News',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 1,
                bottom: TabBar(
                  indicatorColor: Colors.green,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
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

  _openBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Center(
                child: Text(
                  'Lime News',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ListTile(
                title: Text('Gender'),
                // trailing: Row(
                //   children: <Widget>[
                //     Container(
                //       width: 60,
                //       height: 40,
                //       decoration: BoxDecoration(
                //         color: Colors.grey,
                //       ),
                //       child: Center(
                //         child: Text('Male'),
                //       ),
                //     ),
                //     Icon(Icons.arrow_forward_ios)
                //   ],
                // ),
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                title: Text('Country'),
                // trailing: Row(
                //   children: <Widget>[
                //     Container(
                //       width: 60,
                //       height: 40,
                //       decoration: BoxDecoration(
                //         color: Colors.grey,
                //       ),
                //       child: Center(
                //         child: Text('Ghana'),
                //       ),
                //     ),
                //     Icon(Icons.arrow_forward_ios)
                //   ],
                // ),
              ),
              Divider(
                height: 0,
              ),
            ],
          );
        });
  }
}
