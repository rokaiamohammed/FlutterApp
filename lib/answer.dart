import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final VoidCallback selection;
  final String answerText;
  Answer(this.selection,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.pink,
        child: Text(answerText),
        onPressed:selection,
      ),
    );
  }
}
