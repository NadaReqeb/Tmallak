import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/home_page.dart';
import 'package:tmallak/map_screen.dart';
import 'package:tmallak/profile_screen.dart';
import 'package:tmallak/router_helper.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
            'الإعدادات',
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
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(ProfileScreen());
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
                    RouterHelper.routerHelper
                        .routingToSpecificWidget(HomePage());
                  },
                ),
                leading: IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    RouterHelper.routerHelper
                        .routingToSpecificWidget(HomePage());
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
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/images/profilePic.png',
                      height: 100,
                      width: 100,
                    ),
                    onTap: () {
                      RouterHelper.routerHelper
                          .routingToSpecificWidget(ProfileScreen());
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Text(
                              'الاسم الأخير',
                              style: TextStyle(
                                  // fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(8.0),
                            width: 170,
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  // fontFamily: 'Tajawal',
                                  ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'ادخل الاسم',
                                // alignLabelWithHint: true
                              ),
                              keyboardType: TextInputType.name,
                              autofocus: false,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Text(
                              'الاسم الأول',
                              style: TextStyle(
                                  // fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.all(8.0),
                            width: 170,
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  // fontFamily: 'Tajawal',
                                  ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: ' ادخل الاسم',
                                // alignLabelWithHint: true
                              ),
                              keyboardType: TextInputType.name,
                              autofocus: false,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'المنطقة',
                        style: TextStyle(
                            // fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        // fontFamily: 'Tajawal',
                        ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'ادخل اسم المنطقة',
                      // alignLabelWithHint: true
                    ),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'المحافظة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'ادخل اسم المحافظة',
                    ),
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'رقم الجوال',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'ادخل رقم الجوال',
                    ),
                    keyboardType: TextInputType.phone,
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'البريد الإلكتروني',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'ادخل البريد الإلكتروني',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'كلمة المرور',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'ادخل كلمة المرور',
                      // alignLabelWithHint: true
                    ),
                    obscureText: true,
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 1, 112, 202)),
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      child: Text(
                        'حفظ التغيرات',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        // signIn(emailController.text, passwordController.text);
                        RouterHelper.routerHelper
                            .routingToSpecificWidget(ProfileScreen());
                      },
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
