import 'package:flutter/material.dart';

class DefaultAvatar extends StatelessWidget {
  final Widget? activeIcon;
  final Color backgroundColor;
  final Color iconColor;
  final double radius;
  final double iconSize;

  const DefaultAvatar({
    super.key,
    this.activeIcon,
    this.backgroundColor = Colors.red,
    this.iconColor = Colors.white,
    this.radius = 30,
    this.iconSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: radius,
          child: Icon(
            Icons.discord,
            color: iconColor,
            size: iconSize,
          ),
        ),
        if (activeIcon != null)
          Positioned(
            bottom: 0,
            right: 0,
            child: activeIcon!,
          ),
      ],
    );
  }
}
