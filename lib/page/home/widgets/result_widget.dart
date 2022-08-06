import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result({Key? key, required this.resultScore, required this.resetHandler}) : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'Wow... ';
    } else {
      resultText = "You're so bad!";
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
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrangeAccent,
              onPrimary: Colors.white
            ),
            child: const Text("Restart",),
          )
        ],
      ),
    );
  }
}
