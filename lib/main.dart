import "Package:flutter/material.dart";
import './question.dart';
import './answer.dart';

void main() => runApp(RootApp());

class RootApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RootAppState();
  }
}

class RootAppState extends State<RootApp> {
  int iterator = 0;
  int variable = 0;

  void action1(int score) {
    variable += score;
    setState(() {
      if (iterator < 6) {
        iterator++;
      } else
        iterator = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz app"),
            centerTitle: true,
            backgroundColor: Colors.blue[300],
          ),
          body: iterator < 6
              ? Column(
                  children: <Widget>[
                    Question(question[iterator]["questions"]),
                    ...(question[iterator]["answers"]
                            as List<Map<String, Object>>)
                        .map((answer) {
                      return Answer(
                          () => action1(answer["score"]), answer["text"]);
                    }).toList(),
                  ],
                )
              : Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                            width: double.infinity,
                            child: Center(
                                child: Text(
                                    "Be home"
                                    ",Be safe",
                                    style: TextStyle(
                                      fontSize: 38,
                                    )))),
                        Text(
                          "your score is $variable   "
                          " safe score >50",
                          textAlign: TextAlign.center,
                        )
                      ]))),
    );
  }
}
