

// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questionText;

  Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(10),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}