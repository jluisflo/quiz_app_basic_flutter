import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() checkHandler;
  final List<String> answers;
  const Answer({required this.checkHandler, required this.answers});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: answers
            .map(
                (answer) => ElevatedButton(onPressed: checkHandler, child: Text(answer)))
            .toList());
  }
}
