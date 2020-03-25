import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var question = [
  {
    "questions":
        "which country is the most affected by corona virus" /*string*/,
    "answers": [
      {"text": "india", "score": 0},
      {"text": "china", "score": 10},
      {"text": "japan", "score": 0},
      {"text": "iran", "score": 0},
      {"text": "italy", "score": 0}
    ] /*object*/
  },
  {
    "questions": "what are the symtoms of corona virus",
    "answers": [
      {"text": "wet cough", "score": 0},
      {"text": "runny nose", "score": 0},
      {"text": "sneeze", "score": 0},
      {"text": "none of these", "score": 10},
      {"text": "all of the above", "score": 0}
    ]
  },
  {
    "questions":
        "how many days the virus can survive on favorable conditions" /*string*/,
    "answers": [
      {"text": "10 days", "score": 10},
      {"text": "5 days", "score": 0},
      {"text": "3 days", "score": 0},
      {"text": "7 days", "score": 0}
    ] /*object*/
  },
  {
    "questions":
        "out of 100 people how many can die of this virus(mortalty rate)" /*string*/,
    "answers": [
      {"text": "6", "score": 0},
      {"text": "8", "score": 0},
      {"text": "9", "score": 0},
      {"text": "3", "score": 10}
    ] /*object*/
  },
  {
    "questions": "do you cover your face outside" /*string*/,
    "answers": [
      {"text": "yes", "score": 10},
      {"text": "no", "score": 0},
      {"text": "sometimes", "score": 0}
    ] /*object*/
  },
  {
    "questions": "how often you wash your hands" /*string*/,
    "answers": [
      {"text": "often", "score": 10},
      {"text": "not once", "score": 0},
      {"text": "after the loo only", "score": 0}
    ] /*object*/
  },
  {
    "questions": "do you think you can survive this epidemic" /*string*/,
    "answers": [
      {"text": "yes", "score": 10},
      {"text": "no", "score": 0}
    ] /*object*/
  }
];

class Question extends StatelessWidget {
  final String questionpass;

  Question(this.questionpass);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: Text(
        questionpass,
        style: TextStyle(fontSize: 28, fontStyle: (FontStyle.italic)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
