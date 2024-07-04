import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/features/answer/widgets/custom_correct_answer.dart';
import 'custom_question_answer_page.dart';

class CustomCorrectQuestionResults extends StatelessWidget {
  const CustomCorrectQuestionResults({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8),
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
            decoration: BoxDecoration(
              color: ColorsManager.kGreenColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                CustomQuestionAnswerPage(index: index),
                Divider(
                  color: Colors.white.withOpacity(.23),
                ),
                CustomCorrectAnswer(index: index),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
