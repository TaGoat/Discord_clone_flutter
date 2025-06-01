import 'package:discord/auth/login.dart';
import 'package:discord/auth/signup.dart';
import 'package:discord/utils/colors.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250),
            Icon(
              Icons.discord,
              size: 100,
              color: Colors.white,
            ),
            Text(
              textAlign: TextAlign.center,
              "WELCOME TO \n DISCORD",
              style: TextStyle(
                  fontSize: 30,
                  height: 1.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  textAlign: TextAlign.center,
                  "Hang out, play games, or just\n talk. Tap below to get started!",
                  style: TextStyle(height: 1.1, color: Colors.white),
                )),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize:
                    Size(350, 50), // Width 200 and Height 50, adjust as needed
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child:
                  Text('Register', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff151bb9),
                fixedSize:
                    Size(350, 50), // Width 200 and Height 50, adjust as needed
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child:
                  Text('Log In', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
