import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get phrase {
    var txt = 'You are finished';
    if (resultScore <= 10) {
      txt = 'You are cool.';
    } else if (resultScore <= 15) {
      txt = ' You are cool cool..';
    } else {
      txt = 'You are cool cool cool...';
    }
    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          phrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
