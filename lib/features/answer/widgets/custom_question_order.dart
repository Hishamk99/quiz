import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomQuestionOrder extends StatelessWidget {
  const CustomQuestionOrder({
    super.key,
    required this.order,
    required this.isCorrect,
  });
  final int order;
  final bool isCorrect;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
        color: isCorrect
            ? ColorsManager.kGreenColor
            : ColorsManager.kWrongAnswerColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(17),
        ),
      ),
      child: Text(
        '${order + 1}',
        style: Styles.styles21_400.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
