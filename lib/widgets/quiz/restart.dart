import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function restartHandler;
  Restart({required this.restartHandler});

  void restart() {
    restartHandler();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'You did it!',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(onPressed: restart, child: Text('Restart'))
          ],
        ));
  }
}
