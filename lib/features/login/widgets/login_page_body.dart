import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/assets_manager.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.kLoginImage), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Image.asset(
            AssetsManager.kSplashQ,
            color: const Color(0xff473F97),
            width: 170,
            height: 200,
          ),
          //TextFormField(),
        ],
      ),
    );
  }
}
