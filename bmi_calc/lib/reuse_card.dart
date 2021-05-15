import 'package:flutter/material.dart';
import 'input_page.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.colour,this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200,
      width: 170,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}