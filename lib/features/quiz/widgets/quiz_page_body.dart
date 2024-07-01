import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_answer_item.dart';
import 'custom_circle_indicator.dart';
import 'custom_question_title.dart';

class QuizPageBody extends StatelessWidget {
  const QuizPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          Stack(
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
          SizedBox(height: 60),
          CustomAnswerItem(),
        ],
      ),
    );
  }
}


