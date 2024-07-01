import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

import 'custom_radio_item.dart';

class CustomAnswerItem extends StatelessWidget {
  const CustomAnswerItem({
    super.key,
    required this.isActive,
    required this.onTap,
  });
  final bool isActive;
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
            CustomRadioItem(

              isActive: isActive,
            ),
          ],
        ),
      ),
    );
  }
}
