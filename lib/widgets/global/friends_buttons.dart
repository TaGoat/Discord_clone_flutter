import 'package:discord/utils/colors.dart';
import 'package:flutter/material.dart';

Widget friendsbutton({Widget? circleAvatar, Widget? DefultAvatar}) {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: SizedBox(
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () => {},
        style: TextButton.styleFrom(
            side: BorderSide(color: AppColors.bordergrey),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Center(
          child: circleAvatar ?? DefultAvatar,
        ),
      ),
    ),
  );
}
