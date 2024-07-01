import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/colors_manager.dart';
import 'package:quiz_app/core/resources/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.kQuizBackGroundColor,
      title: Text(
        '7/10',
        style: Styles.styles18_600,
      ),
      centerTitle: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            SizedBox(
              height: 35,
              width: 25,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorsManager.kPrimaryColor,
                  size: 20,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Text(
              'Previous',
              style: Styles.styles18_600.copyWith(
                fontSize: 12,
                color: ColorsManager.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}