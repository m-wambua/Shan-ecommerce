import 'package:flutter/material.dart';
import 'package:shan_shop/globals/app_assets.dart';
import 'package:shan_shop/globals/color_schemes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHomeHovered = false;
  bool isShopHovered = false;
  bool isCustomOrderHovered = false;
  bool isAboutUsHovered = false;
  bool isContactUsHovered = false;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            const SizedBox(
              width: 50,
            ),
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  child: Container(height: 40,
                     child: ClipRRect(borderRadius: BorderRadius.circular(30),
                    child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  
                  filled: true,
                  fillColor: Color.fromARGB(255, 245, 245, 220),
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
                  )
                  
                  )

               
            
            )),
            const Spacer(),
            TextButton(
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    isHomeHovered = value;
                  });
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                      color: isHomeHovered
                          ? Color.fromARGB(255, 73, 2, 6)
                          : Color.fromARGB(255, 245, 245, 220),),
                )),
            const SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    isShopHovered = value;
                  });
                },
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                      color: isShopHovered
                          ? Color.fromARGB(255, 73, 2, 6)
                          : Color.fromARGB(255, 245, 245, 220),),
                )),
            const SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    isCustomOrderHovered = value;
                  });
                },
                child: Text(
                  'Custom Order',
                  style: TextStyle(
                      color: isCustomOrderHovered
                          ? Color.fromARGB(255, 73, 2, 6)
                          : Color.fromARGB(255, 245, 245, 220),),
                )),
            const SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    isAboutUsHovered = value;
                  });
                },
                child: Text(
                  'About Us',
                  style: TextStyle(
                      color: isAboutUsHovered
                          ? Color.fromARGB(255, 73, 2, 6)
                          : Color.fromARGB(255, 245, 245, 220),),
                )),
            const SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    isContactUsHovered = value;
                  });
                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: isContactUsHovered
                          ? Color.fromARGB(255, 73, 2, 6)
                          : Color.fromARGB(255, 245, 245, 220),),
                )),
                const SizedBox(width: 15,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag))
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
