import 'package:flutter/cupertino.dart';
import 'package:quiz_app/widgets/quiz/answer.dart';
import 'package:quiz_app/widgets/quiz/questions.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function() checkHandler;

  Quiz({
    required this.question,
    required this.checkHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(
          question: question['question'].toString(),
        ),
        Answer(
            answers: question['options'] as List<String>,
            checkHandler: checkHandler)
      ],
    ));
  }
}
