import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'The earth is square in shape',
    'Approximately one quarter of human bones are in the feet',
    'A slug\'s blood is green in colour'
  ];

  List<bool> answers = [
    false, true, false
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
      flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                 questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
            ),
          ),
        ),
      ),
    ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text("True",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {

                bool correctAnswers = answers[questionNumber];
                if(correctAnswers==true) {
                  print('user is right');
                }
                else {
                  print('user is wrong');
                }

                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.check, color: Colors.green,),
                  );
                  questionNumber++;
                });
                print(questionNumber);
              },
            ),
          )
      ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text("False",
                    style:TextStyle(
                      fontSize: 20,
                    )
                ),
                onPressed: () {

                  bool correctAnswers = answers[questionNumber];
                  if(correctAnswers==true) {
                    print('user is right');
                  }
                  else {
                    print('user is wrong');
                  }


                  setState(() {
                    scoreKeeper.add(
                      Icon(Icons.close, color: Colors.red,),
                    );
                    questionNumber++;
                  });
                  print(questionNumber);
                },
              ),
            )
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}


