import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main()
// {
// runApp(MyApp());

// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> // _ makes the class private
{
  final _ques = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 0},
        {'text': 'Yellow', 'score': 15},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 0},
        {'text': 'Tiger', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 15},
      ],
    },
    {
      'questionText': 'What\'s your favourite hobby?',
      'answers': [
        {'text': 'Listening Music', 'score': 0},
        {'text': 'Singing', 'score': 5},
        {'text': 'Dancing', 'score': 10},
        {'text': 'Others', 'score': 15},
      ],
    },
  ];

  //ques=[]; This doesnot work if ques is a const or final.

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _totalscore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQues(int score) {
    _totalscore = _totalscore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: _questionIndex < _ques.length
            ? Quiz(
                answerQues: _answerQues,
                ques: _ques,
                questionIndex: _questionIndex,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
