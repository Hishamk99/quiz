import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';

class CustomWrongAnswer extends StatelessWidget {
  const CustomWrongAnswer({
    super.key,
    required this.coichedIndex,
    required this.index,
  });
  final int coichedIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cancel_outlined,
            color: ColorsManager.kPrimaryColor,
          ),
          Expanded(
            child: Text(
              coichedIndex == -1
                  ? 'You are not Choice Answer'
                  : QuestionList.questionList[index].answers[coichedIndex],
              textAlign: TextAlign.center,
              style: Styles.styles18_600.copyWith(
                color: ColorsManager.kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
