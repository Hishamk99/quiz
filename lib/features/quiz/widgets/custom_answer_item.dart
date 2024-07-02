import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

import 'custom_radio_item.dart';

class CustomAnswerItem extends StatelessWidget {
  const CustomAnswerItem({
    super.key,
    required this.isActive,
    required this.onTap, required this.answer,
  });
  final bool isActive;
  final String answer;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 50,
        decoration: BoxDecoration(
          color: isActive
              ? ColorsManager.kPrimaryColor.withOpacity(.2)
              : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              answer,
              style: Styles.styles18_600.copyWith(
                color: ColorsManager.kPrimaryColor,
              ),
            ),
            CustomRadioItem(
              isActive: isActive,
            ),
          ],
        ),
      ),
    );
  }
}
