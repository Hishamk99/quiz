import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/features/answer/screens/answer_page.dart';
import 'package:quiz_app/features/login/widgets/custom_login_button.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';
import 'package:quiz_app/features/quiz/cubits/question_cubit/question_cubit.dart';
import 'package:quiz_app/features/quiz/models/quiz_model.dart';
import 'custom_answers_list_view.dart';
import 'custom_circle_indicator.dart';
import 'custom_question_title.dart';

class QuizPageBody extends StatefulWidget {
  const QuizPageBody({super.key});

  @override
  State<QuizPageBody> createState() => _QuizPageBodyState();
}

class _QuizPageBodyState extends State<QuizPageBody> {
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
    QuizModel questionModel = BlocProvider.of<QuestionCubit>(context).question;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocConsumer<QuestionCubit, QuestionState>(
        listener: (context, state) {
          if (state is QuestionEnded) {
            Navigator.pushReplacementNamed(context, AnswersPage.id);
          } else if (state is QuestionQuestionIndex) {
            questionModel = BlocProvider.of<QuestionCubit>(context).question;
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              const SizedBox(height: 50),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CustomQuestionTitle(
                    quizQuestion: questionModel.question,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -50,
                    child: CustomCircleIndicator(
                      quizController: quizController,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              CustomAnswersListView(
                answers: questionModel.answers,
                quizController: quizController,
              ),
              const SizedBox(height: 20),
              CustomLoginButton(
                onTap: () {
                  BlocProvider.of<QuestionCubit>(context).getQuestion();
                },
                txt: 'Next',
              ),
              const SizedBox(height: 40),
            ],
          );
        },
      ),
    );
  }
}
