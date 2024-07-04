import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/features/login/screens/login_page.dart';

class HomeController {
  late StreamController<int> indicatorStream;
  late Sink<int> inputIndicator;
  late Stream<int> outputIndicator;
  late PageController controller;

  int currentINdexPage = 0;
  bool isChange = false;
  HomeController() {
    indicatorStream = StreamController<int>();
    inputIndicator = indicatorStream.sink;
    outputIndicator = indicatorStream.stream;
    inputIndicator.add(currentINdexPage);
    controller = PageController(
      initialPage: currentINdexPage,
    );
  }
  void tapNextPage(BuildContext context, int index) {
    currentINdexPage = index;

    inputIndicator.add(currentINdexPage);
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
    );
  }

  changePage(BuildContext context) {
    currentINdexPage++;
    if (currentINdexPage == 3) {
      Navigator.pushReplacementNamed(context, LoginPage.id);
      currentINdexPage = 0;
    } else {
      inputIndicator.add(currentINdexPage);
      controller.animateToPage(
        currentINdexPage,
        duration: const Duration(milliseconds: 250),
        curve: Curves.linear,
      );
    }
  }

  void dispose() {
    indicatorStream.close();
    indicatorStream.close();
    controller.dispose();
  }
}
