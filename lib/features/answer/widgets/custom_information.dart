import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomInformation extends StatelessWidget {
  const CustomInformation({
    super.key,
    required this.nameAndAnswers,
  });

  final Map<String, dynamic> nameAndAnswers;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
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
