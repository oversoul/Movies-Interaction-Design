import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movies_interaction_design/misc/movie.dart';
import 'package:movies_interaction_design/widgets/movie-card.dart';

class MoviesSlider extends StatelessWidget {
  final double height;
  final Function(int) onPageChange;

  MoviesSlider(this.height, {this.onPageChange});

  @override
  Widget build(BuildContext context) {
    List<Widget> cardSlides = [];
    for (int i = 0; i < 3; i++) {
      cardSlides.add(
        MovieCard(moviesList[i]),
      );
    }

    double fraction = height * .17 / 100;
    bool growCenterPage = true;

    if (height < 295) {
      growCenterPage = false;
    }

    if (height < 120) {
      return Container();
    }

    return CarouselSlider(
      onPageChanged: onPageChange,
      enlargeCenterPage: growCenterPage,
      autoPlay: false,
      viewportFraction: fraction,
      items: cardSlides,
      height: height,
    );
  }
}
