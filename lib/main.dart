import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        titleTextStyle: TextStyle(fontSize: 27),
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    ),
  ));
}
int ball = 1;

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1; //random numbers from 1 to 5
                  print('ball number = $ball');
                });
              },
              child: Image(
                image: AssetImage('images/ball$ball.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


