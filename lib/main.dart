import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'Whats\'s your fav animal',
      'answer': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 7},
        {'text': 'Elephat', 'score': 4},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s the best app developer EVER ?',
      'answer': [
        {'text': 'Mansour', 'score': 1},
        {'text': 'Mansour', 'score': 1},
        {'text': 'Mansour', 'score': 1},
        {'text': 'Mansour', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Ba3d fy 2as2ila 3ammay');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Kinda My First Flutter App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
