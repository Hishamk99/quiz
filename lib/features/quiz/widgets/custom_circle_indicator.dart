import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomCircleIndicator extends StatelessWidget {
  const CustomCircleIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.white,
      child: CircularPercentIndicator(
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        animationDuration: 60000,
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
    );
  }
}