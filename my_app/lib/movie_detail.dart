import 'package:flutter/material.dart';


class MovieDetail extends StatelessWidget {
  final movie;
  MovieDetail(this.movie);
  Color mainColor = const Color(0xff3C3261);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(fit: StackFit.expand, children: [
        new SingleChildScrollView(
          child: new Container(
            margin: const EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 0.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        movie['title'],
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontFamily: 'Raleway'),
                      )),
                      new Text(
                        '${movie['vote_average']}/10',
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontFamily: 'Raleway'),
                      )
                    ],
                  ),
                ),
                new Text(movie['overview'],style: new TextStyle(color: Colors.black,fontSize: 27.0,fontFamily: 'Raleway')),
                new Padding(padding: const EdgeInsets.all(10.0)),
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Container(
                      width: 150.0,
                      height: 60.0,
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,   
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                      ),
                      decoration: new BoxDecoration(
                          color: Colors.black),
                    )),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}