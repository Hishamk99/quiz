import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomQuestionTitle extends StatelessWidget {
  const CustomQuestionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
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
        'In what year did the United States '
        'host the FIFA World Cup for the first time?',
        style: Styles.styles18_600,
      ),
    );
  }
}
