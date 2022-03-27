import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Color.fromARGB(255, 203, 235, 168),
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("I am Rick"),
    ),
    body: Center(
      child: Center(child: Image.asset('assets/media/images/rick.jpeg')),
    ),
  )));
}
