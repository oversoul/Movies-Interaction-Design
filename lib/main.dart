import 'package:flutter/material.dart';
import 'package:movies_interaction_design/home-page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "CircularStd"),
      home: HomePage(),
    );
  }
}
