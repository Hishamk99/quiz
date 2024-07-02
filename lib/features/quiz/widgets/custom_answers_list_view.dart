import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';
import 'package:quiz_app/features/quiz/cubits/question_cubit/question_cubit.dart';
import 'package:quiz_app/features/quiz/models/quiz_model.dart';

import 'custom_answer_item.dart';

class CustomAnswersListView extends StatefulWidget {
  const CustomAnswersListView({super.key});

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
    QuizModel question = BlocProvider.of<QuestionCubit>(context).question;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: question.answers.length,
      itemBuilder: (context, index) {
        return StreamBuilder<int>(
          stream: quizController.outputStreamIsActive,
          builder: (context, snapshot) {
            return CustomAnswerItem(
              answer: question.answers[index],
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
