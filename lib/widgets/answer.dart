import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() checkHandler;
  const Answer({required this.checkHandler });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: checkHandler, child: Text('Check Answer')),
    );
  }
}