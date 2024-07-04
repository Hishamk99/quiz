import 'package:flutter/material.dart';
import 'custom_information.dart';
import 'custom_question_order.dart';
//import 'custom_correct_question_results.dart';
import 'custom_wrong_question_results.dart';

class AnswersBody extends StatelessWidget {
  const AnswersBody({
    super.key,
    required this.nameAndAnswers,
  });
  final Map<String, dynamic> nameAndAnswers;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomInformation(nameAndAnswers: nameAndAnswers),
          const SizedBox(height: 20),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomQuestionOrder(),
              CustomWrongQuestionResults(),
            ],
          ),
        ],
      ),
    );
  }
}
