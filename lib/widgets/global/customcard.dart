import 'package:flutter/material.dart';
import 'package:discord/widgets/global/activeicon.dart';
import 'package:discord/widgets/global/defultavatar.dart';

class ChatCard extends StatelessWidget {
  final Widget? userAvatar;
  final DefaultAvatar? defaultAvatar;
  final String username;
  final String time;
  final String? subtitle;

  const ChatCard({
    super.key,
    this.userAvatar,
    this.defaultAvatar,
    required this.username,
    required this.time,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>{},
        leading: userAvatar ??
            DefaultAvatar(
              radius: 20,
              iconSize: 20,
              activeIcon: activeIcon(size: 15),
            ),
        title: Text(username),
        subtitle: Text(subtitle ?? ""),
        trailing: Text(time));
  }
}
