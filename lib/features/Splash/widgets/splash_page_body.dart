import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/screens/home_page.dart';

import 'custom_button.dart';
import 'custom_quiz_image.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const CustomQuizImage(),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
        ],
      ),
    );
  }
}
