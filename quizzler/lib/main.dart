import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quizbrain.dart';

QuizBrain quiz = QuizBrain();

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
  
  void checkAnswer(bool userAnswer) {
    bool correctAnswers = quiz.getQuestionAnswer();

    setState(() {
      if (quiz.isFinished() == true) {
        Alert(
            context: context,
            title: 'Finished',
            desc: 'You\'ve reached the end of the questions'
        ).show();
        quiz.reset();
        scoreKeeper = [];
      }
    else {
    if(correctAnswers==userAnswer) {
    scoreKeeper.add(
    Icon(Icons.check, color: Colors.green,),
    );
    }
    else {
    scoreKeeper.add(
    Icon(Icons.close, color: Colors.red,),
    );
    }
    quiz.nextQuestion();
    }
    });
  }
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
                 quiz.getQuestionText(),
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
                checkAnswer(true);
                setState(() {
                  quiz.nextQuestion();
                });
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
                  checkAnswer(false);
                  setState(() {
                    quiz.nextQuestion();
                  });
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


