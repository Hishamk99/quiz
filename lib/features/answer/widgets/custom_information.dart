import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';

class CustomInformation extends StatelessWidget {
  const CustomInformation({
    super.key,
    required this.nameAndAnswers,
  });

  final Map<String, dynamic> nameAndAnswers;

  @override
  Widget build(BuildContext context) {
    List<int> choicedList = nameAndAnswers['answers'] as List<int>;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name : ${nameAndAnswers['name']}',
              style: Styles.styles21_700,
            ),
            Text(
              'Grade : ${numOfCorrect(choicedList)}  /  ${nameAndAnswers['answers'].length}',
              style: Styles.styles21_700.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int numOfCorrect(List<int> choicedList) {
    int res = 0;
    for (int i = 0; i < choicedList.length; i++) {
      if (choicedList[i] != -1 &&
          QuestionList.correctAnswers[i] ==
              QuestionList.questionList[i].answers[choicedList[i]]) {
        res++;
      }
    }
    return res;
  }
}
