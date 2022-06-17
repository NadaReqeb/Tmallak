import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/buildDrawer.dart';
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
        drawer: buildDrawer(),
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
