import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz/quiz.dart';

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

  _nextQuestion() => setState(() {
        questionIndex++;
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
                  checkHandler: _nextQuestion)
              : Text('You did it!')),
    );
  }
}
