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
           mainAxisAlignment: MainAxisAlignment.center,
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
                 fontSize: 20,
                 color: Colors.teal[100],
                 fontWeight: FontWeight.bold
               ),
             ),
             SizedBox(
               height: 10,
               child: Divider(
                 color: Colors.teal[100],
               ),
               width: 150,
             ),
             Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
               child: ListTile(
               leading:Icon(
               Icons.phone,
               size:20,
               color: Colors.teal,
               ),
               title: Text("+91 12343652",
               style: TextStyle(
                   color: Colors.teal[900],
                   fontFamily: 'SourceSansPro',
                   fontWeight: FontWeight.bold,
                   fontSize: 20
               ),
               ),
             ),
             ),
             Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
               child: ListTile(
                 leading:Icon(
                   Icons.email,
                   size:20,
                   color: Colors.teal,
                 ),
                 title: Text("suhanii1214@gmail.com",
                   style: TextStyle(
                       color: Colors.teal[900],
                       fontFamily: 'SourceSansPro',
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                   ),
                 ),
               ),
             )
           ],
         ),
       ),
     ),
   );
  }
}
