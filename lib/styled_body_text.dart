import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text, {super.key, this.fontSize = 18});
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: Colors.brown[900],
      ),
    );
  }
}


