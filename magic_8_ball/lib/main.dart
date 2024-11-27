import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnum = 1;

  @override
  Widget build(BuildContext context) {
    void changeAnswer(){
      setState(() {
        ballnum = Random().nextInt(5)+1;
      });
    }
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: TextButton(
          child: Image.asset('images/ball$ballnum.png'),
          onPressed: () {
            changeAnswer();
          },
        ),
      ),
    );
  }
}
