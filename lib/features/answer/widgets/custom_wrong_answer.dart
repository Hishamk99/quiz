import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomWrongAnswer extends StatelessWidget {
  const CustomWrongAnswer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cancel_outlined,
            color: ColorsManager.kPrimaryColor,
          ),
          Expanded(
            child: Text(
              '1989',
              textAlign: TextAlign.center,
              style: Styles.styles18_600.copyWith(
                color: ColorsManager.kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
