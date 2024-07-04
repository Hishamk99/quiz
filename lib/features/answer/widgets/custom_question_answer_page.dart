import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomQuestionAnswerPage extends StatelessWidget {
  const CustomQuestionAnswerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'In what year did the United States '
      'host the FIFA World Cup for the first time?',
      textAlign: TextAlign.center,
      style: Styles.styles18_600.copyWith(
        color: Colors.white,
      ),
    );
  }
}