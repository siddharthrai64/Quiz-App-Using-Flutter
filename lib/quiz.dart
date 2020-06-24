import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int questionIndex;
  final Function answerQues;

  Quiz(
      {@required this.ques,
      @required this.answerQues,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[questionIndex]['questionText'],
        ),
        ...(ques[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQues(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
