import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz/quiz.dart';
import 'package:quiz_app/widgets/quiz/restart.dart';
import 'package:quiz_app/widgets/quiz/score.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int score = 0;
  bool end = false;

  List<Map<String, Object>> questionList = [
    {
      'question': 'What is the most popular system operative inthe world?',
      'options': [
        {'option': 'windows', 'score': 10},
        {'option': 'mac', 'score': 0}
      ]
    },
    {
      'question': 'The most programing lenaguage use in 2021 is?',
      'options': [
        {'option': 'javascript', 'score': 10},
        {'option': 'python', 'score': 9},
        {'option': 'java', 'score': 8},
        {'option': 'c-sharp', 'score': 8},
        {'option': 'php', 'score': 2},
      ]
    }
  ];

  void nextQuestion(int addScore) => setState(() {
        questionIndex++;
        score += addScore;
        if (questionIndex == questionList.length) end = true;
      });

  void restartQuiz() => setState(() {
        questionIndex = 0;
        score = 0;
        end = false;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Column(
              children: [
                (!end)
                    ? Quiz(
                        question: questionList[questionIndex],
                        checkHandler: nextQuestion,
                      )
                    : Restart(restartHandler: restartQuiz),
                Score(score: score),
              ],
            )));
  }
}
