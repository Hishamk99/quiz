import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomLoginNameText extends StatelessWidget {
  const CustomLoginNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Enter your name',
          style: Styles.styles28_600.copyWith(
            color: ColorsManager.kPrimaryColor,
            fontSize: 18,
            fontFamily: 'Baloo2',
          ),
        ),
      ],
    );
  }
}