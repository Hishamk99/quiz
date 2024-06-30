import 'package:flutter/material.dart';
import 'package:quiz_app/core/controller/home_controller.dart';
import 'package:quiz_app/features/home/data/home_view_list.dart';
import 'package:quiz_app/features/home/widgets/custom_home_text_buttons.dart';
import 'package:quiz_app/features/home/widgets/custom_home_view_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController homeController;
  @override
  void initState() {
    homeController = HomeController();
    super.initState();
  }

  @override
  void dispose() {
    homeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                controller: homeController.controller,
                onPageChanged: (value) {
                  homeController.indicatorStream.add(value);
                },
                itemBuilder: (BuildContext context, int index) {
                  return CustomHomeViewItem(
                    homeModel: HomeScreenViewList.homeScreenViewList[index],
                  );
                },
              ),
            ),
            CustomHomeTextButtons(
              homeController: homeController,
            ),
          ],
        ),
      ),
    );
  }
}
