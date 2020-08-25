import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Text('Ask Me Anything', style: TextStyle(fontSize: 26)),
            backgroundColor: Colors.blueAccent,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void setBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: setBallNumber,
            ),
          )
        ],
      ),
    );
  }
}
