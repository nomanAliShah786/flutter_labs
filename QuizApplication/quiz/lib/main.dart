import 'package:flutter/material.dart';
import 'Quiz_Bank.dart';
import 'QuesAns.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Quizz Application')),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: QuizKey(),
        ),
      ),
    );
  }
}

class QuizKey extends StatefulWidget {
  @override
  _QuizKeyState createState() => _QuizKeyState();
}

class _QuizKeyState extends State<QuizKey> {
  QuizBrain obj = QuizBrain();
  List<Widget> scorkeeper = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                obj.GetQuestions(),
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    bool corretAnswer = obj.CorrectAnswer();
                    if (obj.isFinished() == true) {
                      obj.reset();
                      scorkeeper = [];
                    } else {
                      if (corretAnswer == true) {
                        scorkeeper.add(
                          Icon(Icons.check, color: Colors.green),
                        );
                      } else {
                        scorkeeper.add(
                          Icon(Icons.close, color: Colors.red),
                        );
                      }
                      setState(() {
                        obj.nextQuestions();
                      });
                    }
                  },
                  child: Text(
                    'True',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    bool corretAnswer = obj.CorrectAnswer();
                    if (obj.isFinished() == true) {
                      obj.reset();
                      scorkeeper = [];
                    } else {
                      if (corretAnswer == false) {
                        scorkeeper.add(
                          Icon(Icons.check, color: Colors.green),
                        );
                      } else {
                        scorkeeper.add(
                          Icon(Icons.close, color: Colors.red),
                        );
                      }
                      setState(() {
                        obj.nextQuestions();
                      });
                    }
                  },
                  child: Text(
                    'False',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: scorkeeper,
          )
        ],
      ),
    );
  }
}
