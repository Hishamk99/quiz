import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/styles.dart';
import 'package:quiz_app/features/home/models/home_model.dart';

class CustomHomeViewItem extends StatelessWidget {
  const CustomHomeViewItem({
    super.key,
    required this.homeModel,
  });
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(homeModel.image),
          //const SizedBox(height: 70),
          Text(
            homeModel.title,
            style: Styles.styles28_600,
          ),
          //const SizedBox(height: 30),
          Text(
            homeModel.desc,
            textAlign: TextAlign.center,
            style: Styles.styles21_400,
          ),
        ],
      ),
    );
  }
}
