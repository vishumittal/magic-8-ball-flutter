import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBallPage(),
      ),
    );

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text('Ask Me Anything')),
      ),
      body: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void randomNum() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              print('MagicBall Pressed');
              setState(() {
                randomNum();
              });
            },
          ),
        ),
      ),
    );
  }
}
