import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/features/login/widgets/custom_login_button.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';
import 'custom_answers_list_view.dart';
import 'custom_circle_indicator.dart';
import 'custom_question_title.dart';

class QuizPageBody extends StatelessWidget {
  const QuizPageBody({super.key, required this.quizController});
  final QuizController quizController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const SizedBox(height: 50),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomQuestionTitle(
                outputIndexStream: quizController.outputQuestionAndAnswer,
              ),
              Positioned(
                left: 0,
                right: 0,
                top: -50,
                child: CustomCircleIndicator(
                  outputStream: quizController.outputstreamIndicator,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          StreamBuilder<int>(
              stream: quizController.outputQuestionAndAnswer,
              builder: (context, snapshot) {
                return CustomAnswersListView(
                  answers:
                      QuestionList.questionList[snapshot.data ?? 0].answers,
                  quizController: quizController,
                );
              }),
          const SizedBox(height: 20),
          CustomLoginButton(
            onTap: () {},
            txt: 'Next',
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
