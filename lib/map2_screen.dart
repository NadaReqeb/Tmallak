import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/Map3.dart';
import 'package:tmallak/home_page.dart';
import 'package:tmallak/map_screen.dart';
import 'package:tmallak/profile_screen.dart';
import 'package:tmallak/router_helper.dart';

class MapDetailsScreen extends StatefulWidget {
  const MapDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MapDetailsScreen> createState() => _MapDetailsScreenState();
}

class _MapDetailsScreenState extends State<MapDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'الخريطة',
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
                onTap: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(MapScreen());
                },
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(MapScreen());
                },
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
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 38,
                    width: 49,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    // padding: EdgeInsets.only(left: 30),
                    height: 38,
                    width: 288,
                    // width: MediaQuery.of(context).size.width / 1.4,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 12),
                        hintText: 'اكتب المنطقة للبحث',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'شمال لبنان، طرابلس',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/images/Location.png'),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        RouterHelper.routerHelper
                            .routingToSpecificWidget(LocationScreen());
                      },
                      child: Image.asset('assets/images/GroupLoc.png'))),
              Image.asset('assets/images/Map3.png')
            ],
          ),
        ),
      ),
    ));
  }
}
