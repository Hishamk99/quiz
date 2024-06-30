import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/screens/quiz_page.dart';

import 'custom_login_button.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    super.key,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String? name;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (String? val) {
              name = val;
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
          ),
          CustomLoginButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pushNamed(context, QuizPage.id, arguments: name);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
