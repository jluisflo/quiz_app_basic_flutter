import 'package:flutter/material.dart';

class AnswerOption extends StatelessWidget {
  final Function checkHandler;
  final String option;
  final int score;

  AnswerOption({
    required this.checkHandler,
    required this.option,
    required this.score,
  });

  void checkAnswer() {
    checkHandler(this.score);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: checkAnswer, child: Text(option));
  }
}
