import 'package:flutter/material.dart';
import 'package:quiz_app/core/controller/home_controller.dart';
import 'package:quiz_app/features/home/widgets/custom_home_text_buttons.dart';

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
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: 0,
    );
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                controller: controller,
                itemBuilder: (BuildContext context, int index) {
                  return Container();
                },
              ),
            ),
            CustomHomeTextButtons(
              onTap: (int index) {}, 
              homeController: homeController,
            ),
          ],
        ),
      ),
    );
  }
}
