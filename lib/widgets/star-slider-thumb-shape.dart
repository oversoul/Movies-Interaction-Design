import 'dart:math';

import 'package:flutter/material.dart';

class StarSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;

  StarSliderThumbShape({this.thumbRadius});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {Animation<double> activationAnimation,
      Animation<double> enableAnimation,
      bool isDiscrete,
      TextPainter labelPainter,
      RenderBox parentBox,
      SliderThemeData sliderTheme,
      TextDirection textDirection,
      double value}) {
        
    final radius = thumbRadius;
    final Canvas canvas = context.canvas;
    
    final Path path = Path();
    path.moveTo(center.dx, center.dy);
    var alpha = (2 * pi) / 10; 

    for(var i = 11; i != 0; i--)
    {
        var r = radius*(i % 2 + 1)/2;
        var omega = alpha * i;

        var x = (r * sin(omega)) + center.dx;
        var y = (r * cos(omega)) + center.dy;
        path.lineTo(x, y);
    }

    path.close();
    final paint = Paint()..color = Colors.white;
    canvas.drawPath(path, paint);
  }

}
