import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  final String questiontext;
  Question(this.questiontext);

// var questions = [
//       'what is your favorite color',
//       'what\'s your fav animal',
//     ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questiontext,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
      ),
    );
  }
}
