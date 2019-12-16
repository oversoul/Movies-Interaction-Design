import 'package:flutter/material.dart';
import 'package:movies_interaction_design/colors.dart';
import 'package:movies_interaction_design/widgets/animated-scroll.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.1, 1],
          colors: ThemeColors.bgGradient,
        ),
      ),
      child: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(12.0),
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                ),
                labelStyle: TextStyle(
                  fontSize: 30,
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(child: Text('Documentaries')),
                  Tab(child: Text('Movies')),
                  Tab(child: Text('Tv Shows')),
                  Tab(child: Text('Cartoon')),
                ],
              ),
            ),
          ),
          // backgroundColor: ThemeColors.bgColor,
          body: TabBarView(
            children: <Widget>[
              Container(),
              AnimateOnScroll(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
