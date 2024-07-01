import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/features/login/widgets/custom_login_button.dart';
import 'custom_answers_list_view.dart';
import 'custom_circle_indicator.dart';
import 'custom_question_title.dart';

class QuizPageBody extends StatelessWidget {
  const QuizPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const SizedBox(height: 50),
          const Stack(
            clipBehavior: Clip.none,
            children: [
              CustomQuestionTitle(),
              Positioned(
                left: 0,
                right: 0,
                top: -50,
                child: CustomCircleIndicator(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const CustomAnswersListView(),
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


