import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';

import 'custom_answer_item.dart';

class CustomAnswersListView extends StatefulWidget {
  const CustomAnswersListView({super.key, required this.answers});
  final List<String> answers;

  @override
  State<CustomAnswersListView> createState() => _CustomAnswersListViewState();
}

class _CustomAnswersListViewState extends State<CustomAnswersListView> {
  late QuizController quizController;
  @override
  void initState() {
    quizController = QuizController();
    super.initState();
  }

  @override
  void dispose() {
    quizController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.answers.length,
      itemBuilder: (context, index) {
        return StreamBuilder<int>(
          stream: quizController.outputStreamIsActive,
          builder: (context, snapshot) {
            return CustomAnswerItem(
              answer: widget.answers[index],
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
