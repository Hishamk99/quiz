import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';

import 'custom_answer_item.dart';

class CustomAnswersListView extends StatelessWidget {
  const CustomAnswersListView({
    super.key,
    required this.answers,
    required this.quizController,
  });
  final List<String> answers;
  final QuizController quizController;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: answers.length,
      itemBuilder: (context, index) {
        return StreamBuilder<int>(
          stream: quizController.outputStreamIsActive,
          builder: (context, snapshot) {
            return CustomAnswerItem(
              answer: answers[index],
              onTap: () {
                quizController.onTapIndex(index);
              },
              isActive: (snapshot.data ?? false) == index ? true : false,
            );
          },
        );
      },
    );
  }
}
