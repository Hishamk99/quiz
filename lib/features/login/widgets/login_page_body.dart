import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/core/resources/assets_manager.dart';
import 'custom_login_button.dart';
import 'custom_login_name_text.dart';
import 'custom_text_form_field.dart';
import 'cutom_login_logo.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({
    super.key,
  });

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  String? name;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.kLoginImage), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
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
              CustomTextFormField(
                onSaved: (String? val) {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              ),
              CustomLoginButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
