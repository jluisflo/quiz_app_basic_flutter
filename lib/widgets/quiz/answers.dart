import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz/answers_option.dart';

class Answer extends StatelessWidget {
  final Function checkHandler;
  final List<Map<String, Object>> answers;
  const Answer({
    required this.checkHandler,
    required this.answers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: answers
            .map((answer) => AnswerOption(
                  checkHandler: checkHandler,
                  option: answer['option'].toString(),
                  score: int.parse(answer['score'].toString()),
                ))
            .toList());
  }
}
