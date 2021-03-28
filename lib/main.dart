import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {"text": "Black", "score": 10},
        {"text": "Blue", "score": 5},
        {"text": "Red", "score": 6},
        {"text": "White", "score": 4},
      ]
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {"text": "Buffalo", "score": 10},
        {"text": "Tiger", "score": 5},
        {"text": "Lion", "score": 6},
        {"text": "Wolf", "score": 4},
      ]
    },
    {
      'questionText': "Who's your favourite instructor?",
      'answers': [
        {"text": "yulia", "score": 10},
        {"text": "Max", "score": 5},
        {"text": "rita", "score": 6},
        {"text": "jubin", "score": 4},
      ]
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer 1 chosen");
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex)
            : Result(
                totalScore: _totalScore,
                resetHandler: _resetQuiz,
              ));
  }
}
