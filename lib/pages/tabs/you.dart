import 'package:discord/utils/colors.dart';
import 'package:discord/widgets/global/activeicon.dart';
import 'package:discord/widgets/global/defultavatar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.gray,
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  SizedBox(
                    height: 135,
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      actions: [
                        IconButton(
                            iconSize: 19,
                            color: Colors.white,
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black54,
                            ),
                            icon: Icon(Icons.storefront_rounded)),
                        TextButton.icon(
                          onPressed: () => {},
                          label: Text(
                            "Nitro",
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(color: Colors.white, Icons.speed),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black54,
                          ),
                        ),
                        IconButton(
                            iconSize: 19,
                            color: Colors.white,
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black54,
                            ),
                            icon: Icon(Icons.settings)),
                      ],
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              AppColors.primary,
                              AppColors.primary,
                              AppColors.primary,
                              AppColors.primary
                            ], // Your gradient colors
                          ),
                        ),
                      ),
                    ),
                  ),



                  Positioned(
                      top: 137,
                      left: 103,
                      child: TextButton.icon(
                        onPressed: () => {},
                        label: Text(
                          " Add Status",
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: Icon(
                          Icons.add_circle_outlined,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,

                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black12),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      )),
                  Positioned(
                      top: 117,
                      left: 105,
                      child: Container(
                        width: 10.5,
                        height: 10.5,
                        decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                      )),
                  Positioned(
                      top: 132,
                      left: 113,
                      child: Container(
                        width: 17.5,
                        height: 17.5,
                        decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                      )),
                  Positioned(
                    top: 90,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: AppColors.background,
                      radius: 45,
                      child: DefaultAvatar(
                        backgroundColor: Color(0xff747d88),
                        radius: 40,
                        iconSize: 60,
                        activeIcon: activeIcon(size: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text("X1|WOLF\n",
                    style: TextStyle(fontSize: 23,height: 0.3),),
                    Text("X1|WOLF\n",
                      style: TextStyle(),)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
