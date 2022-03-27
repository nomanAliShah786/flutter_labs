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
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Enabled"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Enabled"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.volume_up_sharp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
