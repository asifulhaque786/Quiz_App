import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function abc;
  final String answerText;

  Answer(this.abc, this.answerText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: MaterialButton(
        child: Text(
          answerText,
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28),
        ),
        onPressed: abc,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
