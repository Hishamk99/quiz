import 'package:flutter/material.dart';

import 'custom_name_grade.dart';

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
          CustomNameGrade(nameAndAnswers: nameAndAnswers),
        ],
      ),
    );
  }
}


