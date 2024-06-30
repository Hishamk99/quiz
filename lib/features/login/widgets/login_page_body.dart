import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/core/resources/assets_manager.dart';
import 'custom_form.dart';
import 'custom_login_name_text.dart';
import 'cutom_login_logo.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.kLoginImage), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            const CutomLoginLogo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            const CustomLoginNameText(),
            const SizedBox(height: 5),
            const CustomForm(),
          ],
        ),
      ),
    );
  }
}


