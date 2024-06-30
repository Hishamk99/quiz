import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});
  static String id = 'QuizPage';
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return const SafeArea(
      child: Scaffold(),
    );
  }
}
