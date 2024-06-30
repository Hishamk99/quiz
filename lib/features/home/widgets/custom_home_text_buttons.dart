import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

import 'custuom_home_text_button_item.dart';

class CustomHomeTextButtons extends StatelessWidget {
  const CustomHomeTextButtons({super.key, required this.onTap});
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustuomHomeTextButtonItem(
            onPressed: () {},
            txt: 'Skip',
            style: Styles.styles15_400,
          ),
          DotsIndicator(
            onTap: (position) {
              onTap(position);
            },
            dotsCount: 3,
            position: 1,
            decorator: DotsDecorator(
              activeColor: ColorsManager.kGetStartedColor,
            ),
          ),
          CustuomHomeTextButtonItem(
            onPressed: () {},
            txt: 'Next',
            style: Styles.styles15_400.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
