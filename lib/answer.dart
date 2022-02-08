import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.black, //change background color of button
          onPrimary: Colors.yellow, //change text color of button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
