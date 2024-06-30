import 'package:flutter/material.dart';
import 'package:quiz_app/features/Splash/screens/splash_page.dart';
import 'package:quiz_app/features/home/screens/home_page.dart';
import 'package:quiz_app/features/login/screens/login_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
     SplashPage.id : (context)=> const SplashPage(),
     HomePage.id : (context)=> const HomePage(),
     LoginPage.id : (context)=> const LoginPage(),
  };
}
