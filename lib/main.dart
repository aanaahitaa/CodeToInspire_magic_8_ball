import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

// Step 1 - Create a Stateless Widget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Ball(),
    );
  }
}

// Step 2 - Create a Stateful Widget
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1; // Step 5 - Create a variable for ball number

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(6) + 1; // Step 5 - Generates a random number between 1-6
      print('ballNumber: $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print('I got clicked'); // Step 3 - Print when clicked
          changeBall(); // Step 4 - Randomise the ball image
        },
        child: Image.asset('images/ball$ballNumber.png'), // Step 5 - Display the ball image
      ),
    );
  }
}
