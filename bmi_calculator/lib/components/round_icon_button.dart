import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icon, required this.onPress});
  final IconData icon;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: BoxConstraints(minWidth: 40.0, minHeight: 40.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
