import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Ask Me Anything',
          ),
          backgroundColor: Color.fromARGB(255, 0, 84, 154)),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: (() {
                print("I got clicked");
                print("ballNumber: " + Random().nextInt(5).toString());
              }),
              child: Image.asset("images/ball1.png"),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
