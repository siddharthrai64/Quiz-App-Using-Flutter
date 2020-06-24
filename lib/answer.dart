import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: RaisedButton(
              color: Colors.black,
              textColor: Colors.white,
              child: Text(answerText,),
              onPressed:
                  selectHandler, //Passing the function pointer without parenthesis because the onpressed needs a function not a returned value.
            ),
      
    );
  }
}