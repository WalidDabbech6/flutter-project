import 'package:flutter/material.dart';

import '../constant/colors.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final int color;
  const AppBackground({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryAppColor,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(color),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: child,
        ),
      ),
    );
  }
}
