import 'package:flutter/material.dart';

class CustuomHomeTextButtonItem extends StatelessWidget {
  const CustuomHomeTextButtonItem({
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
