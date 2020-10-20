import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _ques = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 8},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Dog', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Maximus', 'score': 3},
        {'text': 'Maximumps', 'score': 6},
        {'text': 'Maximoms', 'score': 8}
      ],
    },
  ];
  var _qIndex = 0;
  var _total = 0;

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _total = 0;
    });
  }

  void _answerQuestion(int score) {
    _total += score;
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
    if (_qIndex < _ques.length) {
      print('More questions exist');
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Colors.orange,
        ),
        body: _qIndex < _ques.length
            ? Quiz(ques: _ques, ansQues: _answerQuestion, qIndex: _qIndex)
            : Result(_total, _resetQuiz),
      ),
    );
  }
}
