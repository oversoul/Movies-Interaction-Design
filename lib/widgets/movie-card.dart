import 'package:flutter/material.dart';
import 'package:movies_interaction_design/misc/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(movie.image),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          footer(context)
        ],
      ),
    );
  }

  Widget footer(context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFC200),
            borderRadius: BorderRadius.circular(2.0),
          ),
          padding: EdgeInsets.all(2.0),
          child: Text("IMDb", style: TextStyle(fontSize: 9, height: 1.2)),
        ),
        SizedBox(width: 4.0),
        Text(movie.score.toString(), style: TextStyle(color: Colors.white)),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(.5), width: 1),
            borderRadius: BorderRadius.circular(2.0),
          ),
          padding: EdgeInsets.all(2.0),
          child: Text(
            movie.rate,
            style: TextStyle(
              fontSize: 8,
              height: 1.2,
              color: Colors.white.withOpacity(.5),
            ),
          ),
        ),
      ],
    );
  }
}
