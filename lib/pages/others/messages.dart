import 'package:discord/utils/colors.dart';
import 'package:discord/widgets/global/activeicon.dart';
import 'package:discord/widgets/global/customcard.dart';
import 'package:discord/widgets/global/defultavatar.dart';
import 'package:discord/widgets/global/friends_buttons.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          "Messages",
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.search),
                style: TextButton.styleFrom(
                    side: BorderSide(color: AppColors.bordergrey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => {},
                  label: Text("Add Friends"),
                  icon: Icon(Icons.person),
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      iconColor: Colors.grey[800],
                      side: BorderSide(color: AppColors.bordergrey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              )
            ]),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100, // Adjust the height as needed
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                friendsbutton(
                    DefultAvatar:
                        DefaultAvatar(activeIcon: activeIcon(size: 20))),
                friendsbutton(
                    DefultAvatar:
                        DefaultAvatar(activeIcon: activeIcon(size: 20))),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                ChatCard(
                    defaultAvatar: DefaultAvatar(),
                    username: "Yonis",
                    time: "09:00 pm"),
                ChatCard(
                    defaultAvatar: DefaultAvatar(),
                    username: "Ayoub",
                    time: "04:00 pm"),
                ChatCard(
                    defaultAvatar: DefaultAvatar(),
                    username: "Sharif",
                    time: "07:00 pm"),
                ChatCard(
                    defaultAvatar: DefaultAvatar(),
                    username: "Sharif",
                    time: "07:00 pm"),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Invite more friends",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.ios_share),
                style: TextButton.styleFrom(backgroundColor: AppColors.gray),
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.link),
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.gray,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
