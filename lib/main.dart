import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
              backgroundColor: Colors.blue,
              appBar: AppBar(
                backgroundColor: Colors.blue.shade700,
                title: Text('Ask Me anything'),
              ),
              body: Ball())),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        child: Image.asset('images/ball1.png'),
        onPressed: () {
          print('I got clicked');
        },
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          print('I got clicked');
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print(ballNumber);
          });
        },
      ),
    );
  }
}
