import 'package:flutter/material.dart';

class container_property extends StatelessWidget {
  container_property(
      {required this.colour, this.cardchild, required this.onPress});
  final Color colour;
  final cardchild;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
