import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/features/home/widgets/custom_correct_answer.dart';

import 'custom_question_answer_page.dart';
import 'custom_wrong_answer.dart';

class CustomWrongQuestionResults extends StatelessWidget {
  const CustomWrongQuestionResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8),
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
            decoration: BoxDecoration(
              color: ColorsManager.kWrongAnswerColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const CustomQuestionAnswerPage(),
                Divider(
                  color: Colors.white.withOpacity(.23),
                ),
                const CustomWrongAnswer(),
                const SizedBox(height: 8),
                const CustomCorrectAnswer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
