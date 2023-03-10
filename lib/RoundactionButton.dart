import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 100.0, height: 50.0),
      elevation: 10.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
