import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomCircleIndicator extends StatelessWidget {
  const CustomCircleIndicator({
    super.key,
    required this.outputStream,
    required this.outputAnimationValue,
  });
  final Stream<int> outputStream;
  final Stream<double> outputAnimationValue;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.white,
      child: StreamBuilder<double>(
          stream: outputAnimationValue,
          builder: (context, snapshotPercent) {
            return CircularPercentIndicator(
              circularStrokeCap: CircularStrokeCap.round,
              animationDuration: 30000,
              restartAnimation: true,
              radius: 35,
              lineWidth: 7.0,
              percent: snapshotPercent.data ?? 0,
              center: StreamBuilder<int>(
                stream: outputStream,
                builder: (context, snapshot) {
                  return Text(
                    (snapshot.data ?? '0').toString(),
                    style: Styles.styles28_600.copyWith(
                      fontFamily: 'Ballo2',
                    ),
                  );
                },
              ),
              progressColor: ColorsManager.kActivePercenIndicatorColor,
              backgroundColor: ColorsManager.kUnActivePercenIndicatorColor,
            );
          }),
    );
  }
}
