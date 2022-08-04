import 'package:flutter/material.dart';

import 'package:quiz_app/widgets/home/questions_widget.dart';
import 'package:quiz_app/widgets/home/answer_widget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;

  const Quiz(
    {
      Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText:
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
            selectHandler: () => answerQuestion(answer['score'] as int),
            answerText: answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}