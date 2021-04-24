import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home:BallPage() ,
));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball()
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int diceNumber=1;

  void changeBall() {
    setState(() {
      diceNumber= Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print("I got clicked : $diceNumber");
          changeBall();
        },
        child: Image.asset('images/ball$diceNumber.png'),
      ),
    );
  }
}



