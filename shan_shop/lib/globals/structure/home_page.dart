import 'package:flutter/material.dart';
import 'package:shan_shop/globals/app_assets.dart';
import 'package:shan_shop/globals/color_schemes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.veryDarkBrown6,
        toolbarHeight: 60,
        elevation: 0,
        bottomOpacity: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
            top: Radius.circular(30),
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 26,
              backgroundColor: AppColors.bgColorBrownDark3,
              child: CircleAvatar(
                maxRadius: 25,
                backgroundImage: AssetImage(AppAsset.companyImage),
                child: Image.asset(
                  AppAsset.companyImage,
                  width: 65,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background CircleAvatar
          Positioned(
    // Adjust as necessary
            child: Center(
              child: CircleAvatar(
                radius: 300,
                backgroundImage: AssetImage(AppAsset.companyImage),
              ),
            ),
          ),
          // Your overlay content here
          Center(
            child: Text(
              'Overlay Content',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
