import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/home_page.dart';
import 'package:tmallak/login_screen.dart';
import 'package:tmallak/router_helper.dart';
import 'package:tmallak/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'الملف الشخصي',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        iconTheme: IconThemeData(
          size: 25, //change size on your need
          color: Colors.black, //change color on your need
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios),
        //   onPressed: () {
        //     RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
        //   },
        // ),
        actions: [
          IconButton(
              onPressed: () {
                RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
        // actions: [
        // IconButton(
        //     onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.message_outlined),
        // )
        // ],
      ),
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Image.asset(
                'assets/images/profilePic.png',
                height: 70,
                width: 70,
              ),
              onTap: () {
                RouterHelper.routerHelper
                    .routingToSpecificWidget(ProfileScreen());
              },
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "سارة أبو دقة",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 6),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('لبنان، بيروت-البقاع'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.location_city,
                    size: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: GestureDetector(
                child: Text(
                  'الرئيسية',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
                },
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {
                  RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
                },
                icon: Icon(Icons.home),
              ),
            ),
            ListTile(
              title: GestureDetector(
                child: Text(
                  'المكاتب',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag,
                ),
              ),
            ),
            ListTile(
              title: GestureDetector(
                child: Text(
                  'المفضلة',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
            ),
            ListTile(
              title: GestureDetector(
                child: Text(
                  'الخريطة',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(
                  Icons.map,
                ),
              ),
            ),
            ListTile(
              title: GestureDetector(
                child: Text(
                  'من نحن',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(
                  Icons.info,
                ),
              ),
            ),
            ListTile(
              title: GestureDetector(
                child: Text(
                  'تواصل معنا',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.chat,
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
            Spacer(),
            // SizedBox(
            //   height: 150,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300),
                    child: GestureDetector(
                        child: Image.asset(
                      'assets/images/facebookIcon.png',
                      // width: 35,
                      // height: 35,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300),
                    child: GestureDetector(
                        child: Image.asset(
                      'assets/images/twitterLogo.png',
                      // width: 35,
                      // height: 35,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300),
                    child: GestureDetector(
                        child: Image.asset(
                      'assets/images/instagramLogo.png',
                      // width: 30,
                      // height: 30,
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/profilePic.png',
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "سارة أبو دقة",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 6),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('لبنان، بيروت-البقاع'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.location_city,
                    size: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'الإعدادات',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    onTap: () {
                      RouterHelper.routerHelper
                          .routingToSpecificWidget(SettingsScreen());
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      RouterHelper.routerHelper
                          .routingToSpecificWidget(SettingsScreen());
                    },
                    icon: Icon(Icons.settings),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'الإشعارات',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'اللغة',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.language),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'إعلاناتي',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.paste),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'الرسائل',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'تسجيل الخروج',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      RouterHelper.routerHelper
                          .routingToSpecificWidget(LoginScreen());
                    },
                    icon: Icon(Icons.logout),
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
