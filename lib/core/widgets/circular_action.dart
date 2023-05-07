import 'package:flutter/material.dart';

class CircularAction extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final Function() onPress;

  const CircularAction({
    Key? key,
    required this.backgroundColor,
    required this.icon,
    required this.iconColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
