import 'package:flutter/material.dart';
import '../constants.dart';

class large_button extends StatelessWidget {
  large_button({this.onTap, required this.buttonTitle});

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
