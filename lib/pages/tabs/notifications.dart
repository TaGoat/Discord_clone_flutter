import 'package:discord/utils/colors.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
          title: Text("Notifications"),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.more_horiz),
              style: TextButton.styleFrom(
                backgroundColor: AppColors.gray,
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(10), child: Divider()),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Text("Recent activity"),
        ));
  }
}
