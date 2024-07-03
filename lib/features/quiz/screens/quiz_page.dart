import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';
import 'package:quiz_app/features/quiz/widgets/custom_app_bar.dart';
import 'package:quiz_app/features/quiz/widgets/quiz_page_body.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  static String id = 'QuizPage';

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
    with SingleTickerProviderStateMixin {
  late QuizController quizController;
  @override
  void initState() {
    quizController = QuizController(this);
    quizController.forwardAnimation();
    quizController.restartAnimation(context);
    quizController.makeCounter();
    super.initState();
  }

  @override
  void dispose() {
    quizController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    quizController.addName(name);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.kQuizBackGroundColor,
        appBar: CustomAppBar(quizController: quizController),
        body: QuizPageBody(quizController: quizController),
      ),
    );
  }
}
