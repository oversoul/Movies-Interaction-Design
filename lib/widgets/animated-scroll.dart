import 'package:flutter/material.dart';
import 'package:movies_interaction_design/colors.dart';
import 'package:movies_interaction_design/misc/movie.dart';
import 'package:movies_interaction_design/widgets/slider.dart';
import 'package:movies_interaction_design/widgets/movie-details.dart';
import 'package:movies_interaction_design/widgets/rating-slider.dart';

class AnimateOnScroll extends StatefulWidget {
  @override
  _AnimateOnScrollState createState() => _AnimateOnScrollState();
}

class _AnimateOnScrollState extends State<AnimateOnScroll> {
  final controller = ScrollController();
  double appBarHeight = 200.0;
  Movie _currentMovie;

  @override
  void initState() {
    super.initState();
    _currentMovie = moviesList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.05),
            BlendMode.dstATop,
          ),
          image: NetworkImage(_currentMovie.image),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: CustomScrollView(
          controller: controller,
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              pinned: true,
              expandedHeight: 420,
              backgroundColor: Colors.transparent,
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    children: <Widget>[
                      MoviesSlider(
                        constraints.maxHeight - 56 + kToolbarHeight,
                        onPageChange: changeMovie,
                      ),
                    ],
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(height: 15),
                  Text(
                    _currentMovie.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      _currentMovie.details,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.3),
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 3.0,
                                color: ThemeColors.blueColor,
                              ),
                              insets: EdgeInsets.symmetric(horizontal: 90.0),
                            ),
                            labelStyle: TextStyle(fontSize: 16),
                            tabs: [
                              Tab(text: 'Overview'),
                              Tab(text: 'Rate Movie'),
                            ],
                          ),
                        ),
                        Container(
                          height: 278.0,
                          padding: EdgeInsets.all(15.0),
                          child: TabBarView(
                            children: <Widget>[
                              MovieDetails(_currentMovie),
                              rateMovie(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rateMovie() {
    return Column(
      children: <Widget>[
        RatingSlider(rates: _currentMovie.rates.toStringAsFixed(0)),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 12,
            ),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.arrow_forward,
                color: ThemeColors.blueColor.withOpacity(.5),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(.2),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(.2),
                ),
              ),
              hintText: 'Write your opinion...',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(.3),
              ),
            ),
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0)),
          color: Color(0xff44339B),
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  void changeMovie(int index) {
    setState(() {
      _currentMovie = moviesList[index];
    });
  }
}
