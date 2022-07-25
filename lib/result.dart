import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are pure :)';
    } else if (resultScore <= 12) {
      resultText = 'You are what we call an AVERAGE human';
    } else if (resultScore <= 16) {
      resultText = 'You are ... scary';
    } else {
      resultText = 'Run it\'s the devil !!!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
            onPressed: resetHandler,
            child: Text(
              'Restart',
            ))
      ],
    ));
  }
}
