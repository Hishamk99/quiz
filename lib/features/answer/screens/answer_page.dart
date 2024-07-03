import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/features/answer/widgets/answers_body.dart';

class AnswersPage extends StatelessWidget {
  const AnswersPage({super.key});
  static String id = 'AnswersPage';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> nameAndAnswers =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // print(nameAndAnswers['name']);
    // print(nameAndAnswers['answers']);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.kPrimaryColor,
        body:  AnswersBody(nameAndAnswers: nameAndAnswers),
      ),
    );
  }
}
