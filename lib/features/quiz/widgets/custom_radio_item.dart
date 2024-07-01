import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';

class CustomRadioItem extends StatelessWidget {
  const CustomRadioItem({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Icon(
            CupertinoIcons.checkmark_alt_circle_fill,
            color: ColorsManager.kPrimaryColor,
          )
        : Container(
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
