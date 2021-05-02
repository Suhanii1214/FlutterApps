import 'question.dart';
class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'The earth is square in shape', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green in colour', a: false),
  ];

  void nextQuestion() {
    if(_questionNumber<_questionBank.length-1) {
      _questionNumber++;
    }
    print(_questionNumber);
  }
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if(_questionNumber>=_questionBank.length-1) {
      print('Now returning true');
      return true;
    }
    else {
      return false;
    }
  }
  void reset() {
    _questionNumber=0;
  }
}