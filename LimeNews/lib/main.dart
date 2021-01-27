import 'package:LimeNews/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lime News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(title: 'Lime'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  var _pages = [Home(), Me()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: (_currentIndex == 0)
                ? Icon(
                    CupertinoIcons.refresh_circled_solid,
                    size: 18,
                  )
                : Icon(
                    FontAwesomeIcons.home,
                    size: 18,
                  ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 3,
              ),
              child: (_currentIndex == 0)
                  ? Text(
                      'Refresh',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    )
                  : Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 18,
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 3,
              ),
              child: Text(
                'Me',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
