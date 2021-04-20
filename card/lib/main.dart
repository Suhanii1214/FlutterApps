import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.teal,
       body: SafeArea(
         child: Column(
           children: <Widget>[
             CircleAvatar(
               radius: 60.0,
               backgroundImage: AssetImage('images/suhani.jpeg'),
             ),
             Text('Suhani Singh',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
             ),
             Text(' FLUTTER DEVELOPER ',
               style: TextStyle(
                 fontFamily: 'SourceSansPro',
                 fontSize: 15,
                 color: Colors.teal[50],
                 fontWeight: FontWeight.bold
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }
}
