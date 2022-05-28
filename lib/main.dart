// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {

  var _questionIndex = 0;

  void AnswerQuestion() {
    setState(() {
      if(_questionIndex < 1) {
        _questionIndex = _questionIndex + 1;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What is your First Name ?',
      'What is your Last Name ?',
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(question[_questionIndex]),
          ElevatedButton(
            onPressed: () => { print("Your Name is satyam")},
            child: Text("Satyam")),
          ElevatedButton(
            onPressed: AnswerQuestion,
            child: Text("Chutiya")),
          ElevatedButton(
            onPressed: AnswerQuestion,
            child: Text("Maddy")),
        ]),
      ),
    );
  }
}
