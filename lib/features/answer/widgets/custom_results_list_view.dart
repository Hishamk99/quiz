import 'package:flutter/material.dart';

import 'custom_question_order.dart';
import 'custom_wrong_question_results.dart';

class CustomResultsListView extends StatelessWidget {
  const CustomResultsListView({
    super.key,
    required this.nameAndAnswers,
  });

  final Map<String, dynamic> nameAndAnswers;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: nameAndAnswers['answers'].length,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomQuestionOrder(),
                CustomWrongQuestionResults(),
              ],
            ),
          );
        },
      ),
    );
  }
}
