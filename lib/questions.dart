import 'dart:ui';

import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  final String question;

  const QuestionPage({Key key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
