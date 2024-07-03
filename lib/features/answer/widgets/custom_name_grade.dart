import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomNameGrade extends StatelessWidget {
  const CustomNameGrade({
    super.key,
    required this.nameAndAnswers,
  });

  final Map<String, dynamic> nameAndAnswers;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name : ${nameAndAnswers['name']}',
              style: Styles.styles21_700,
            ),
            Text(
              'Grade : 2  /  ${nameAndAnswers['answers'].length}',
              style: Styles.styles21_700.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}