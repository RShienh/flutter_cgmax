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
      'answers': ['Black', 'Red', 'Green', 'Blue'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Lion', 'Snake', 'Elephant', 'Dog'],
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': ['Max', 'Maximus', 'Maximumps', 'Maximoms'],
    },
  ];
  var _qIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
