import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF0A0E35);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(colour: activeCardColor)
                ),
                Expanded(
                  child: Reusable_Card(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width:double.infinity,
              height: 50,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF0A0E35),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(colour:activeCardColor)
                ),
                Expanded(
                  child: Reusable_Card(colour: activeCardColor)
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 50.0,
          )
        ],
      )
    );
  }
}

class Reusable_Card extends StatelessWidget {
   Reusable_Card({@required this.colour});

   final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
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