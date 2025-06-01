import 'package:discord/pages/others/messages.dart';
import 'package:discord/pages/others/servers.dart';
import 'package:discord/utils/colors.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Messages(),
    Servers(),
  ];

  void _navigateToPage(int index) {
    setState(() => _selectedIndex = index);
  }

  Widget buildSidebarButton(IconData icon, int index) {
    return Row(
      children: [
        (_selectedIndex == index)
            ? Container(
                width: 4,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              )
            : Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                )),
        Padding(
          padding: _selectedIndex == index
              ? EdgeInsets.only(left: 6, top: 5, right: 10, bottom: 5)
              : EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
          child: SizedBox(
            width: 45,
            height: 45,
            child: IconButton(
              onPressed: () => _navigateToPage(index),
              icon: Icon(icon,
                  color: _selectedIndex == index
                      ? Colors.white
                      : Color(0xFF4c4f56)),
              style: TextButton.styleFrom(
                backgroundColor:
                    _selectedIndex == index ? AppColors.primary : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: _selectedIndex == index
                        ? BorderRadius.circular(10)
                        : BorderRadius.circular(25)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget addbuttons(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 3, top: 4),
      child: SizedBox(
        width: 45,
        height: 45,
        child: IconButton(
          onPressed: () => {},
          icon: Icon(
            icon,
            color: Colors.green,
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Row(
          children: [
            Container(
              width: 70,
              color: AppColors.gray,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSidebarButton(Icons.messenger_outlined, 0),
                  Divider(
                      color: Colors.grey[350],
                      thickness: 1,
                      indent: 17,
                      endIndent: 17),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        buildSidebarButton(Icons.circle, 1),
                      ],
                    ),
                  ),
                  addbuttons(Icons.add),
                  addbuttons(Icons.account_tree)
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                child: _screens[_selectedIndex],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
