import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/assets_manager.dart';
import 'custom_login_name_text.dart';
import 'custom_text_form_field.dart';
import 'cutom_login_logo.dart';

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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CutomLoginLogo(),
            CustomLoginNameText(),
            CustomTextFormField(),
          ],
        ),
      ),
    );
  }
}
