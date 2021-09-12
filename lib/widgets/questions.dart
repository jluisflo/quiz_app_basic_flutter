import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
