import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/assets_manager.dart';

class CustomQuizImage extends StatelessWidget {
  const CustomQuizImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.kSplashQ,
      width: MediaQuery.of(context).size.width * .7,
      height: MediaQuery.of(context).size.height * .8,
    );
  }
}
