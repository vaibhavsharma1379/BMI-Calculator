import 'package:flutter/material.dart';
import 'package:bmi_calculatoor/constants.dart';

class lower_Container extends StatelessWidget {
  lower_Container({required this.ContainerTitle, required this.onTap});
  final String ContainerTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: CbottomBoxColor,
        margin: const EdgeInsets.only(top: 10),
        height: CbottomBoxHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            ContainerTitle,
            style: CbottomButttontextstyle,
          ),
        ),
      ),
    );
  }
}
