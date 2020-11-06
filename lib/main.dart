import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
              backgroundColor: Colors.blue,
              appBar: AppBar(
                backgroundColor: Colors.blue.shade700,
                title: Text('Ask Me anything'),
              ),
              body: BallPage())),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset('images/ball1.png'),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
