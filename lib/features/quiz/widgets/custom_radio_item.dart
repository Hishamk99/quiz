import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';

class CustomRadioItem extends StatelessWidget {
  const CustomRadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(
          side: BorderSide(
            color: ColorsManager.kPrimaryColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}