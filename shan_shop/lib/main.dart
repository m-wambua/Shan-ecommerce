import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shan_shop/globals/app_assets.dart';
import 'package:shan_shop/globals/color_schemes.dart';
import 'package:shan_shop/globals/structure/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shanice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for a few seconds then navigate to the home page
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2), // Animation duration
          curve: Curves.easeInOut,
          width: MediaQuery.of(context).size.width * 2 / 3, // 2/3 of the screen width
          height: MediaQuery.of(context).size.height * 2 / 3, // 2/3 of the screen height
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: CircleAvatar(
              radius: 300, // Radius of the circle avatar
              backgroundImage: AssetImage(AppAsset.welcomeImage), // Image asset
            ),
          ),
        ),
      ),
    );
  }
}
