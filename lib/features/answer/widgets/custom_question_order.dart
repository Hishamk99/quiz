import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomQuestionOrder extends StatelessWidget {
  const CustomQuestionOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: const BoxDecoration(
        color: Color(0xff35AC05),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(17),
        ),
      ),
      child: Text(
        '1',
        style: Styles.styles21_400.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}