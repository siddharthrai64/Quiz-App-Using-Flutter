import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questext;

  Question(this.questext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(100),
        child: Text(
          questext,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        );
  }
}
