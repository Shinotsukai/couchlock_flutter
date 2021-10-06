import 'package:couchlock_flutter/styles/theme.dart' as Style;
import 'package:couchlock_flutter/widgets/genres.dart';
import 'package:couchlock_flutter/widgets/now_playing.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      body: ListView(
        children:<Widget>[
          NowPlaying(),
          GenresScreen(),
        ]
      ),
      
    );
  }
}