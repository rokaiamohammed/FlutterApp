import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result ({ Key? key }) : super(key: key);
  final int resultScore;
  final VoidCallback reset;
  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome you get " + resultScore.toString();
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable you get ' + resultScore.toString();
    } else if (resultScore <= 16) {
      resultText = 'you are strange you get ' + resultScore.toString();
    } else {
      resultText = 'you are so bad you get ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),textColor: Colors.blue,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
