import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, required this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
