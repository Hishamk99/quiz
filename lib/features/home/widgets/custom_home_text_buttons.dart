import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/controller/home_controller.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';
import 'package:quiz_app/features/login/screens/login_page.dart';
import 'custuom_home_text_button_item.dart';

class CustomHomeTextButtons extends StatelessWidget {
  const CustomHomeTextButtons({
    super.key,
    required this.homeController,
  });
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustuomHomeTextButtonItem(
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginPage.id);
            },
            txt: 'Skip',
            style: Styles.styles15_400,
          ),
          StreamBuilder<int>(
            stream: homeController.outputIndicator,
            builder: (context, snapshot) {
              return DotsIndicator(
                onTap: (position) {
                  homeController.tapNextPage(context, position, true);
                },
                dotsCount: 3,
                position: snapshot.data ?? 0,
                decorator: DotsDecorator(
                  size: const Size(12, 12),
                  activeSize: const Size(12, 12),
                  activeColor: ColorsManager.kGetStartedColor,
                  color: ColorsManager.kUnActiveIndicatorColor,
                ),
              );
            },
          ),
          CustuomHomeTextButtonItem(
            onPressed: () {
              homeController.tapNextPage(
                  context, HomeController.currentINdexPage, false);
            },
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
