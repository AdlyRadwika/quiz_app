import 'package:flutter/material.dart';

import 'package:quiz_app/page/home/widgets/quiz_widget.dart';
import 'package:quiz_app/page/home/widgets/result_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Snake', 'score': 3},
        {'text': 'Rabbit', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favorite food?",
      'answers': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Pie', 'score': 5},
        {'text': 'Choco', 'score': 3},
        {'text': 'Nuts', 'score': 1},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    _questionIndex += 1;
    setState(() {});
  }

  void _resetQuiz() {
    _questionIndex = 0;
    _totalScore = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Center(
        child: _questionIndex < _questions.length
          ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
          : Result(resultScore: _totalScore,resetHandler: _resetQuiz),
      ),
    );
  }
}