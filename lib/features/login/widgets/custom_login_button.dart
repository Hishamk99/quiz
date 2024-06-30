import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorsManager.kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Started',
            style: Styles.styles21_400.copyWith(
              fontSize: 24,
              color: Colors.white,
              fontFamily: 'Baloo2',
            ),
          ),
        ),
      ),
    );
  }
}
