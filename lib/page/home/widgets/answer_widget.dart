import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  const Answers({Key? key, required this.selectHandler, required this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.black
        ),
        child: Text(answerText),
      ),
    );
  }
}
