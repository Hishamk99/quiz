import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustuomHomeTextButton(
                  onPressed: () {},
                  txt: 'Skip',
                  style: Styles.styles15_400,
                ),
                CustuomHomeTextButton(
                  onPressed: () {},
                  txt: 'Next',
                  style: Styles.styles15_400.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustuomHomeTextButton extends StatelessWidget {
  const CustuomHomeTextButton({
    super.key,
    required this.onPressed,
    required this.txt,
    required this.style,
  });
  final void Function()? onPressed;
  final String txt;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        txt,
        style: style,
      ),
    );
  }
}
