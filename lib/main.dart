import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'QuestionText': 'what\'s your favorite color',
      'Answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'yellow', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'QuestionText': 'what\'s your fav animal',
      'Answers': [
        {'text': 'monkey', 'score': 3},
        {'text': 'lion', 'score': 11},
        {'text': 'tiger', 'score': 5},
        {'text': 'Snake', 'score': 9},
      ],
    },
  ];
  int _totalScore = 0;
  void _answer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Color(0xFFFF9990),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _answer,
                _questions,
                _questionIndex,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
