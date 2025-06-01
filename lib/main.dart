import 'package:discord/auth/intro-screen.dart';
import 'package:discord/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.background),
        fontFamily: 'ggSans', // Apply globally
      ),
      debugShowCheckedModeBanner: false,

      home: IntroScreen() ,
    );
    }
}
