import 'package:couchlock_flutter/bloc/get_genres_block.dart';
import 'package:couchlock_flutter/model/genre.dart';
import 'package:couchlock_flutter/model/genre_response.dart';
import 'package:couchlock_flutter/widgets/genres_list.dart';
import 'package:flutter/material.dart';

class GenresScreen extends StatefulWidget {
  @override
  _GenresScreenState createState() => _GenresScreenState();
}

class _GenresScreenState extends State<GenresScreen> {
 @override
  void initState(){
    super.initState();
    genresBloc..getGenres();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<GenreResponse>(
      stream: genresBloc.subject.stream,
      builder: (context, AsyncSnapshot<GenreResponse> snapshot){
        if (snapshot.hasData){
          if(snapshot.data.error != null && snapshot.data.error.length > 0) {
            return _buildErrorWidget(snapshot.data.error);
          }
          return _buildGenresWidget(snapshot.data);

        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else {
          return _buildLoadingWidget();
        }
      }
    );
  }

}

Widget _buildLoadingWidget(){
  return Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 25.0,
        width: 25.0,
        child: CircularProgressIndicator(
          valueColor:AlwaysStoppedAnimation<Color>(Colors.white),
          strokeWidth: 4.0,

        ),
      )
    ],
  ),);
}

Widget _buildErrorWidget(String error){
  return Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget>[
      Text('Error has occured: $error')
    ]
  ),);
}

Widget _buildGenresWidget(GenreResponse data){
  List<Genre> genres = data.genres;
  if(genres.length == 0) {
    return Container(
      child: Text('No Genres'),
    );
  } else return GenreList(genres: genres);

}