import 'package:flutter/material.dart';
import 'package:quiz_app/features/login/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginPageBody(),
      ),
    );
  }
}
