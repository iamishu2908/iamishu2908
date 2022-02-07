import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 15},
        {'text': 'Yellow', 'score': 20},
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favourite place?',
      'answers': [
        {'text': 'Forests', 'score': 15},
        {'text': 'Islands', 'score': 20},
        {'text': 'Beaches', 'score': 10},
        {'text': 'Hills', 'score': 5},
      ],
    },
    {
      'questionText': 'Who are u?',
      'answers': [
        {'text': 'Human', 'score': 15},
        {'text': 'Manithan', 'score': 20},
        {'text': 'Person', 'score': 10},
        {'text': 'Alien', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quizzzz time !'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
