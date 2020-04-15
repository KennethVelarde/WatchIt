import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'movie_detail.dart';


class MostPopularMovieList extends StatefulWidget {
  @override
  MostPopularMovieListState createState() {
    return new MostPopularMovieListState();
  }
}

class MostPopularMovieListState extends State<MostPopularMovieList> {
  var movies;
  Color mainColor = const Color(0xffffff);

  void getData() async {
    var data = await getJson();
    @override
   void setState(fn) {
    if(mounted){
      super.setState(fn);
    }
  }
    setState(() {
      movies = data['results'];

    });
    
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,   
          ),
          onPressed: () {
            Navigator.pop(context);
          }, 
        ),
        title: new Text(
          'Most Popular',
          style: 
          new TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              fontSize: 40,
              fontWeight: FontWeight.bold
              ),
        ),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                  itemCount: movies == null ? 0 : movies.length,
                  itemBuilder: (context, i) {
                    return new OutlineButton(
                      child: new MovieCell(movies, i),
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                              return new MovieDetail(movies[i]);
                        }));
                      },
                      color: Colors.white,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

Future<Map> getJson() async {
  final _baseURL = "http://api.themoviedb.org/3/movie";
  final _apiKey = "5ee74fea1c88ce068288e38abde56abd";

  var url = "$_baseURL/popular?api_key=$_apiKey";
  var response = await http.get(url);
  return json.decode(response.body);
}

class MovieCell extends StatelessWidget {
  final movies;
  final i;
  Color mainColor = Colors.black;
  MovieCell(this.movies, this.i);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Expanded(
                child: new Container(
              margin: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 0.0),
              child: new Column(
                children: [
                  new Text(
                    movies[i]['title'],
                    style: new TextStyle(
                        fontSize: 32.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: mainColor),
                  ),
                  new Padding(padding: const EdgeInsets.all(4.0)),
                  new Text(
                    movies[i]['overview'],
                    maxLines: 3,
                    style: new TextStyle(
                        color: Colors.black, fontFamily: 'Raleway',fontWeight: FontWeight.bold),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            )),
          ],
        ),
        new Container(
          width: 300.0,
          height: 0.5,
          color: const Color(0xD2D2E1ff),
          margin: const EdgeInsets.all(16.0),
        )
      ],
    );
  }
}
