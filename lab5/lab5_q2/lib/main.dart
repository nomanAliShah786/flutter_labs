import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Lab 5 Q2',
        home: Scaffold(
          body: Row(
            children: [
              Expanded(flex: 1, child: myFlatButton(1, Colors.yellow)),
              Expanded(flex: 1, child: myFlatButton(2, Colors.black)),
              Expanded(flex: 1, child: myFlatButton(3, Colors.purple)),
              Expanded(flex: 1, child: myFlatButton(4, Colors.lightBlue)),
              Expanded(flex: 1, child: myFlatButton(5, Colors.orange)),
              Expanded(flex: 1, child: myFlatButton(6, Colors.red)),
              Expanded(flex: 1, child: myFlatButton(7, Colors.lightGreen)),
            ],
          ),
        ));
  }
}

FlatButton myFlatButton(int i, Color myColor) {
  return FlatButton(
    color: myColor,
    height: double.infinity,
    child: Text(""),
    onPressed: () {
      final audioPlayer = AudioCache();
      audioPlayer.play('note$i.wav');
    },
  );
}
