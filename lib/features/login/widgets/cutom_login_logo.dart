import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/assets_manager.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';

class CutomLoginLogo extends StatelessWidget {
  const CutomLoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.kSplashQ,
      color: ColorsManager.kPrimaryColor,
      width: 170,
      height: 170,
    );
  }
}
