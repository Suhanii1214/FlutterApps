import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildkey(Color color, int sound) {
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed:() {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              buildkey(Colors.red,1),
              buildkey(Colors.orange,2),
              buildkey(Colors.yellow,3),
              buildkey(Colors.green,4),
              buildkey(Colors.teal,5),
              buildkey(Colors.blue,6),
              buildkey(Colors.purple,7),
            ],
          ),
        ),
      )
    );
  }
}

