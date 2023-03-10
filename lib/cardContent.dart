import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.iconName, required this.iconText});
  final IconData iconName;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80,
          color: Color(0xFF7C7D88),
        ),
        SizedBox(
          height: 15,
        ),
        Text(iconText, style: Ctextstyle)
      ],
    );
  }
}
