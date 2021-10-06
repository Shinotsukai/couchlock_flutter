import 'package:couchlock_flutter/screens/movieScreen.dart';
import 'package:couchlock_flutter/styles/theme.dart' as Style;
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {

  int _currentIndex = 0;

  final List<Widget> pageTabs = [
      MovieScreen(),
       Center(child: Text('Page 2'),),
        Center(child: Text('Page 3'),),
         Center(child: Text('Page 4'),),
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.secondColor,
        centerTitle: true,
        title: Text('CouchLock'),
        ),
  body: pageTabs[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Style.Colors.secondColor,
    backgroundColor: Style.Colors.mainColor,
    items: <Widget>[
      Icon(Icons.movie, size: 30),
      Icon(Icons.tv, size: 30),
      Icon(Icons.list, size: 30),
      Icon(Icons.person, size: 30),
    ],
   onTap: (index){
           setState((){
             _currentIndex = index;
           });
         },
  ),
    );
  }
}