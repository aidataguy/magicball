import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade600,
        appBar: AppBar(
          backgroundColor: Colors.red.shade600,
          title: Text("Magic8"),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicNum = 1;
  void changeImg() {
    setState(() {
      magicNum = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeImg();
              },
              child: Image.asset('images/ball$magicNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
