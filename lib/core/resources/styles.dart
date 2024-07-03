import 'package:flutter/material.dart';

import 'colors_manager.dart';

class Styles {
  static TextStyle styles21_400 = TextStyle(
    fontSize: 21,
    color: ColorsManager.kGetStartedColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle styles15_400 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: ColorsManager.kGetStartedColor,
  );
  static TextStyle styles28_600 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: ColorsManager.kGetStartedColor,
  );

  static TextStyle styles18_600 = const TextStyle(
    fontSize: 18,
    fontFamily: 'Ballo2',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styles21_700 = TextStyle(
    fontSize: 21,
    fontFamily: 'Ballo2',
    fontWeight: FontWeight.w700,
    color: ColorsManager.kPrimaryColor,
  );
}
