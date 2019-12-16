import 'package:flutter/material.dart';
import 'package:movies_interaction_design/colors.dart';
import 'package:movies_interaction_design/widgets/star-slider-thumb-shape.dart';

class RatingSlider extends StatefulWidget {
  final int maxValue;
  final int minValue;
  final String rates;

  RatingSlider({this.minValue = 1, this.maxValue = 10, this.rates = "0"});

  @override
  _RatingSliderState createState() => _RatingSliderState();
}

class _RatingSliderState extends State<RatingSlider> {
  double slideValue;

  @override
  void initState() {
    super.initState();
    slideValue = widget.minValue.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final double position = MediaQuery.of(context).size.width / 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 50.0,
              child: ClipRect(
                clipper: SquareCustomCipper(),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: position - (35 * slideValue) + 1,
                      child: Container(
                        child: Row(
                          children: List<Widget>.generate(
                            widget.maxValue,
                            (int n) {
                              final value = n + widget.minValue;
                              return number(value.toString());
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: position + 2,
              top: 20,
              child: Text(
                "/${widget.maxValue}",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white.withOpacity(.4),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            widget.rates,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white.withOpacity(.4),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(width: 23, child: sideNumber("${widget.minValue}")),
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                  trackHeight: 7,
                  inactiveTrackColor: Color(0xff373A5F),
                  activeTrackColor: ThemeColors.goldColor,
                  thumbShape: StarSliderThumbShape(thumbRadius: 15),
                ),
                child: Slider(
                  min: widget.minValue.toDouble(),
                  max: widget.maxValue.toDouble(),
                  value: slideValue,
                  onChanged: (value) {
                    setState(() {
                      slideValue = value;
                    });
                  },
                ),
              ),
            ),
            Container(width: 23, child: sideNumber("${widget.maxValue}")),
          ],
        ),
      ],
    );
  }

  Widget number(String number) {
    return Container(
      width: 35,
      child: Text(
        number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          color: ThemeColors.goldColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget sideNumber(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SquareCustomCipper extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    final double left = size.width / 2 - 38 / 2;
    final double right = (size.width / 2) + 33 / 2;
    return Rect.fromLTRB(left, 0.0, right, size.height);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
