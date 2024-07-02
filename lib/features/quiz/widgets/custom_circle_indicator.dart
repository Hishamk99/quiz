import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomCircleIndicator extends StatelessWidget {
  const CustomCircleIndicator({
    super.key,
    required this.outputStream,
  });
  final Stream<int> outputStream;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: outputStream,
        builder: (context, snapshot) {
          return CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircularPercentIndicator(
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              animationDuration: 30000,
              restartAnimation: true,
              radius: 35,
              lineWidth: 7.0,
              percent: 1,
              center: Text(
                (snapshot.data ?? '0').toString(),
                style: Styles.styles28_600.copyWith(
                  fontFamily: 'Ballo2',
                ),
              ),
              progressColor: ColorsManager.kActivePercenIndicatorColor,
              backgroundColor: ColorsManager.kUnActivePercenIndicatorColor,
            ),
          );
        });
  }
}
