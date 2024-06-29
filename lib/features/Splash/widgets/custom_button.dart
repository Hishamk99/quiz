import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * .09,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorsManager.kWhiteColor,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: Styles.styles21_400,
          ),
        ),
      ),
    );
  }
}
