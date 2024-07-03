import 'package:flutter/material.dart';

class AnswersPage extends StatelessWidget {
  const AnswersPage({super.key});
  static String id = 'AnswersPage';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> nameAndAnswers =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    print(nameAndAnswers['name']);
    print(nameAndAnswers['answers']);
    return const SafeArea(
      child: Scaffold(),
    );
  }
}
