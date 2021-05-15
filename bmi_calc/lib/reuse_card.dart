import 'package:flutter/material.dart';
import 'input_page.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.colour,this.cardChild,this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: 200,
        width: 170,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}