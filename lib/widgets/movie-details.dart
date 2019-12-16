import 'package:flutter/material.dart';
import 'package:movies_interaction_design/misc/movie.dart';
import 'package:movies_interaction_design/widgets/actors-list.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  MovieDetails(this.movie);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Story",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Text(
          movie.story,
          style: TextStyle(color: Colors.white.withOpacity(.4), fontSize: 11.0),
        ),
        SizedBox(height: 10),
        Text(
          movie.creators,
          style: TextStyle(color: Colors.white.withOpacity(.2), fontSize: 11.0),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 15.0),
          child: Text(
            "Cast",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        ActorsList(movie.casts),
      ],
    );
  }
}
