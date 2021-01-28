import 'package:LimeNews/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  Me({Key key}) : super(key: key);

  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: SizedBox.shrink(),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              CupertinoIcons.settings_solid,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage('images/solo.jpeg'),
              ),
              title: Text(
                'Solomon Aidoo Junior',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Hey there!, I'm a big fan of Lime News",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              height: 470,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(15),
                ),
              ),
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    title: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 242, 242, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              CupertinoIcons.search,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0,
                    bottom: TabBar(
                      indicatorColor: Colors.green,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      // onTap: (index) {
                      //   setState(() {
                      //     _currentIndex = index;
                      //   });
                      // },
                      tabs: <Widget>[
                        Tab(
                          text: 'FOLLOWING',
                        ),
                        Tab(
                          text: 'FAVOURITES',
                        ),
                        Tab(
                          text: 'COMMENTS',
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      Following(),
                      Favourites(),
                      Comments(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
