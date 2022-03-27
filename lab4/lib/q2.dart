import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Development Lab',
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
