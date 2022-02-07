// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = 'You are so bad!!';
    } else if (resultScore <= 30) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 45) {
      resultText = 'You are good at this!!';
    } else {
      resultText = 'You are the best!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Column(
            children: [
              FlatButton(
                color: Colors.redAccent,
                child: Text(
                  'Restart Quiz!',
                ),
                textColor: Colors.black,
                onPressed: resetHandler,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
