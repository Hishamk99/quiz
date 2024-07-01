import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

import 'custom_radio_item.dart';

class CustomAnswerItem extends StatelessWidget {
  const CustomAnswerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1986',
            style: Styles.styles18_600.copyWith(
              color: ColorsManager.kPrimaryColor,
            ),
          ),
          const CustomRadioItem(),
        ],
      ),
    );
  }
}