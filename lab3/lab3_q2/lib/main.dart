import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/media/images/noman.jpg'),
              radius: 50,
            ),
            Text(
              "Noman Ali Shah",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'ZenKurenaido',
                color: Colors.white,
              ),
            ),
            Text(
              "Full Stack Web Engineer",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Lato',
                  letterSpacing: 3),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25,
                    ),
                    title: Text("+923081601400"),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 25,
                    ),
                    title: Text("nomanalishah9876@gmail.com"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
