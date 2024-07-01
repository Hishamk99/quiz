import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/features/quiz/widgets/custom_app_bar.dart';
import 'package:quiz_app/features/quiz/widgets/quiz_page_body.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});
  static String id = 'QuizPage';
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.kQuizBackGroundColor,
        appBar: const CustomAppBar(),
        body: const QuizPageBody(),
      ),
    );
  }
}
