import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int res;
  final Function resetQuiz;
  Result(this.res, this.resetQuiz);

  String get phrase {
    var resText = 'You did it! Hurray.';
    if (res <= 5) {
      resText = 'You Are Awesome And Pretty much like Me.';
    } else if (res < 15) {
      resText = 'You are good! We can merge sometimes.';
    } else if (res <= 20) {
      resText = 'You are ....... Strange. Please Stop Using MyApp.';
    } else {
      resText = 'You are So Bad!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            phrase,
            style: TextStyle(
              fontSize: 36,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Try One More Time'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
