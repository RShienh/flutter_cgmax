import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final Function ansQues;
  final int qIndex;

  Quiz({@required this.ques, @required this.ansQues, @required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[qIndex]['questionText'],
        ),
        ...(ques[qIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => ansQues(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
