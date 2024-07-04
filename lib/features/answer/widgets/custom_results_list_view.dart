import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';

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
    List<int> choicedList = nameAndAnswers['answers'] as List<int>;
    return Expanded(
      child: ListView.builder(
        itemCount: nameAndAnswers['answers'].length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomQuestionOrder(
                  order: index,
                  isCorrect: choicedList[index] == -1
                      ? false
                      : QuestionList.correctAnswers[index] ==
                          QuestionList
                              .questionList[index].answers[choicedList[index]],
                ),
                CustomWrongQuestionResults(
                  index: index,
                  isCorrectAnswer: choicedList[index] == -1
                      ? false
                      : QuestionList.correctAnswers[index] ==
                          QuestionList
                              .questionList[index].answers[choicedList[index]],
                  correctAnswer: QuestionList.correctAnswers[index], 
                  choichedIndex: choicedList[index],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
