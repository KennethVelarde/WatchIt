import 'package:flutter/material.dart';
import 'package:my_app/top_rated.dart';
import 'most_popular.dart';
import 'now_playing.dart';
import 'upcoming_movie.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Watchit', style:TextStyle(fontSize:70.0,fontFamily: "Raleway",)),
      ),
      body: Center(
  child: Container(
    color: Colors.black,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Container(
          child: new Material(
            child: new InkWell(
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MostPopularMovieList()),),
              enableFeedback: true,
              child:
              new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                   child: 
                   new Icon(
                      Icons.trending_up, 
                      size: 60.0,
                    ),
                      color: Colors.purple.shade200, 
                  ),
                  ),
                    new Container(
                      height: 30.0,
                      color: Colors.black,
                      child: new Center(
                        child: new Text(
                          "Most Popular", 
                          style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'Raleway'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
          height: 150.0, 
        ),
new Container(
          child: new Material(
            child: new InkWell(
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopRatedMovieList())),
              enableFeedback: true,
              child:
              new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                   child: 
                   new Icon(
                      Icons.thumb_up, 
                      size: 60.0,
                    ),
                      color: Colors.redAccent.shade200, 
                  ),
                  ),
                    new Container(
                      height: 30.0,
                      color: Colors.black,
                      child: new Center(
                        child: new Text(
                          "Top Rated", 
                          style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'Raleway'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
          height: 150.0, 
        ),

        new Container(
          child: new Material(
            child: new InkWell(
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new UpcomingMovieMovieList()),),
              enableFeedback: true,
              child:
              new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                   child: 
                   new Icon(
                      Icons.event,
                      size: 60.0,
                    ),
                      color: Colors.blueAccent.shade200, 
                  ),
                  ),
                    new Container(
                      height: 30.0,
                      color: Colors.black,
                      child: new Center(
                        child: new Text(
                          "Upcoming", 
                          style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'Raleway'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
          height: 150.0,
        ),
        new Container(
          child: new Material(
            child: new InkWell(
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new NowPlayingMovieList()),),
              enableFeedback: true,
              child:
              new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                   child: 
                   new Icon(
                      Icons.movie, 
                      size: 60.0,
                    ),
                      color: Colors.yellow.shade300, 
                  ),
                  ),
                    new Container(
                      height: 30.0,
                      color: Colors.black,
                      child: new Center(
                        child: new Text(
                          "Now Playing", 
                          style: TextStyle(color: Colors.white, fontSize: 25,fontFamily:'Raleway'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
          height: 153.0, 
        ),
      ],
    ),
  ),
),
    );
  }
}