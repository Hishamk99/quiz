import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';

class CustomQuestionAnswerPage extends StatelessWidget {
  const CustomQuestionAnswerPage({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Text(
      QuestionList.questionList[index].question,
      textAlign: TextAlign.center,
      style: Styles.styles18_600.copyWith(
        color: Colors.white,
      ),
    );
  }
}