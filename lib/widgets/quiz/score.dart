import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int score;

  Score({required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        'Score $score',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
