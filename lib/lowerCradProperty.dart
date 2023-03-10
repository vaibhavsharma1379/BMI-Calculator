import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RoundactionButton.dart';
import 'constants.dart';

class lowerCradProperty extends StatelessWidget {
  lowerCradProperty(
      {required this.widgetText,
      required this.value,
      required this.onPressIncrement,
      required this.onPressDecrement});
  final String widgetText;
  final int value;
  final void Function() onPressIncrement;
  final void Function() onPressDecrement;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widgetText,
            style: Ctextstyle,
          ),
          Text(value.toString(), style: CNumberstyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RoundActionButton(
                    icon: FontAwesomeIcons.minus, onPressed: onPressDecrement),
              ),
              Expanded(
                child: RoundActionButton(
                    icon: FontAwesomeIcons.plus, onPressed: onPressIncrement),
              ),
            ],
          )
        ],
      ),
    );
  }
}
