import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_information.dart';
import 'custom_question_order.dart';

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
           Row(
            children: [
             const CustomQuestionOrder(),
              Container(
                decoration: BoxDecoration(

                ),
                child: const Column(
                  children: [],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
