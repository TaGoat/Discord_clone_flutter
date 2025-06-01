import "package:flutter/material.dart";


Widget activeIcon({double size = 20.0 }) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Container(
        width: size * 0.7,
        height: size * 0.7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xFF747c8c),
            width: 3.2,
          ),
        ),
      ),
    ),
  );
}
