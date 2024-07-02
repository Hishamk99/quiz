import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomQuestionTitle extends StatelessWidget {
  const CustomQuestionTitle({
    super.key, required this.quizQuestion,
  });
  final String quizQuestion;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurStyle: BlurStyle.outer,
            blurRadius: 100,
            spreadRadius: -50,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        quizQuestion,
        textAlign: TextAlign.center,
        style: Styles.styles18_600,
      ),
    );
  }
}
