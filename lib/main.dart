import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz/quiz.dart';
import 'package:quiz_app/widgets/quiz/restart.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  List<Map<String, Object>> questionList = [
    {
      'question': 'What is the most popular system operative inthe world?',
      'options': ['windows']
    },
    {
      'question': 'The most programing lenaguage use in 2021 is?',
      'options': ['js', 'python']
    }
  ];

  nextQuestion() => setState(() {
        questionIndex++;
      });

  restartQuiz() => setState(() {
        questionIndex = 0;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: (questionIndex < questionList.length)
              ? Quiz(
                  question: questionList[questionIndex],
                  checkHandler: nextQuestion)
              : Restart(restartHandler: restartQuiz)),
    );
  }
}
