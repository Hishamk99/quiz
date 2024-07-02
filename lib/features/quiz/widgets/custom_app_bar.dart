import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';
import 'package:quiz_app/features/quiz/controller/quiz_controller.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.quizController,
  });
  final QuizController quizController;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.kQuizBackGroundColor,
      title: StreamBuilder<int>(
        stream: quizController.outputQuestionAndAnswer,
        builder: (context, snapshot) {
          return Text(
            '${(snapshot.data ?? 0) + 1}/${QuestionList.questionList.length}',
            style: Styles.styles18_600,
          );
        },
      ),
      centerTitle: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            SizedBox(
              height: 35,
              width: 28,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorsManager.kPrimaryColor,
                  size: 20,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Text(
              'Previous',
              style: Styles.styles18_600.copyWith(
                fontSize: 12,
                color: ColorsManager.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
