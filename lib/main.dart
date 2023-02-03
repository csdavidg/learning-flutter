import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

@immutable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex =
          (_questionIndex < 2) ? _questionIndex += 1 : _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Red', 'Blue', 'Green', 'White', 'Black']
      },
      {
        'questionText': "What's your favorite animal?",
        'answers': ['Rabbit', 'Hen', 'Horse', 'Dog', 'Cat', 'Whale', 'Snake']
      },
      {
        'questionText': 'What\'s your favorite learning platform?',
        'answers': ['LinkedIn', 'Oreilly', 'Udemy', 'Bootcamps']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
                questionText:
                    questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                  onPressedFunction: _answerQuestion, buttonText: answer);
            }).toList(),
            //ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}
