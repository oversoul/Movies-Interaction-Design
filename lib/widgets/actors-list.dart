import 'package:flutter/material.dart';

class ActorsList extends StatelessWidget {
  final List<String> casts;

  ActorsList(this.casts);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: casts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 90,
            height: 80,
            padding: EdgeInsets.only(right: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.network(
                casts[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
