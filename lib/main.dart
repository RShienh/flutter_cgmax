import 'package:flutter/material.dart';
import 'question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void answerQuestion() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Question(
              ques[_qIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 selected'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 is selected');
              },
            ),
          ],
        ),
      ),
    );
  }
}
