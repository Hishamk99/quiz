import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class QuizPageBody extends StatelessWidget {
  const QuizPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 35,
          lineWidth: 7.0,
          percent: .5,
          center: Text(
            "30",
            style: Styles.styles28_600.copyWith(
              fontFamily: 'Ballo2',
            ),
          ),
          progressColor: ColorsManager.kActivePercenIndicatorColor,
          backgroundColor: ColorsManager.kUnActivePercenIndicatorColor,
        ),
      ],
    );
  }
}
