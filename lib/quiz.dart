import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQ; //"Function" not working
  Quiz(
    @required this.answerQ,
    @required this.questions,
    @required this.questionIndex,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['QuestionText'].toString(),
        ),
        ...(questions[questionIndex]['Answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=> answerQ(answer['score']), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
