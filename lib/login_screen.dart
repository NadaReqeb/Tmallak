import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/home_page.dart';
import 'package:tmallak/password_recovery.dart';
import 'package:tmallak/register_screen.dart';
import 'package:tmallak/router_helper.dart';
import 'package:tmallak/splash_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'تسجيل الدخول',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              // fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () {},
          //   ),
          // ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'البريد الإلكتروني أو رقم الجوال',
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
                      hintText: 'ادخل البريد الإلكتروني أو رقم الجوال',
                      // alignLabelWithHint: true
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'كلمة المرور',
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
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
                      hintText: 'ادخل كلمة المرور',
                      // alignLabelWithHint: true
                    ),
                    obscureText: true,
                    autofocus: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'هل نسيت كلمة المرور؟',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal',
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              RouterHelper.routerHelper
                                  .routingToSpecificWidget(PasswordRecovery());
                            }),
                    ])),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20),
                //   child: Align(
                //     alignment: Alignment.topLeft,
                //     child: Text(
                //       'هل نسيت كلمة المرور؟',
                //       style: TextStyle(
                //           fontFamily: 'Tajawal',
                //           // fontWeight: FontWeight.bold,
                //           fontSize: 14),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 1, 112, 202)),
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      child: Text(
                        'تسجيل الدخول',
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
                            .routingToSpecificWidget(HomePage());
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'لا تمتلك حساب؟ ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 185, 185, 185),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'قم بإنشاء حساب',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tajawal',
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  RouterHelper.routerHelper
                                      .routingToSpecificWidget(
                                          RegisterScreen());
                                }),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Text(
                        "  أو  ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(255, 184, 184, 184))
                        // color: Colors.black
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'التسجيل بواسطة جوجل',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/google.jpg',
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(255, 184, 184, 184))
                        // color: Colors.black
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'التسجيل بواسطة فيسبوك',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/facebooks.png',
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                )
                // Container(
                //      margin:  EdgeInsets.symmetric(horizontal: 20),
                //      padding: EdgeInsets.symmetric(vertical: 15),
                //      // width: double.infinity,
                //      // height: double.infinity,
                //      decoration: const BoxDecoration(
                //        image: DecorationImage(
                //          fit: BoxFit.fill,
                //          image: AssetImage('assets/images/button.jpg'),
                //        ),
                //      ),
                //      child: Padding(
                //        padding: const EdgeInsets.only(left: 90,right: 80),
                //        child: Row(

                //          mainAxisAlignment: MainAxisAlignment.start,
                //          children: [
                //            Image.asset("assets/images/facebook.jpg",height: 70,width: 50,),
                //            SizedBox(width: 2,),
                //            Text("Facebook" ,style:
                //            TextStyle(
                //                fontSize: 14,
                //                color:Colors.black
                //            ),)
                //          ],
                //        ),
                //      ),
                //   ),

                //   SizedBox(
                //     height: 10,
                //   ),
                //   Row(children: [
                //     Expanded(
                //       child: Divider(
                //         thickness: 1,
                //       ),
                //     ),
                //     Text(
                //       "  or  ",
                //       style: TextStyle(fontSize: 12,color: Colors.black),
                //     ),
                //     Expanded(
                //       child: Divider(
                //         thickness: 1,
                //       ),
                //     ),
                //   ],),
                //   SizedBox(
                //     height: 10,
                //   ),
                //    Container(
                //      margin:  EdgeInsets.symmetric(horizontal: 20),
                //      padding: EdgeInsets.symmetric(vertical: 15),
                //      // width: double.infinity,
                //      // height: double.infinity,
                //      decoration: const BoxDecoration(
                //        image: DecorationImage(
                //          fit: BoxFit.fill,
                //          image: AssetImage('assets/images/button.jpg'),
                //        ),
                //      ),
                //      child: Padding(
                //        padding: const EdgeInsets.only(left: 90,right: 80),
                //        child: Row(

                //          mainAxisAlignment: MainAxisAlignment.start,
                //          children: [
                //            Image.asset("assets/images/google.jpg", height: 50,width: 50,),
                //            SizedBox(width: 2,),
                //            Text("Google" ,style:
                //            TextStyle(
                //                fontSize: 14,
                //                color:Colors.black
                //            ),)
                //          ],
                //        ),
                //      ),
                //   ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 20),
                //   padding: EdgeInsets.symmetric(vertical: 15),
                //   width: 50,
                //   height: 50,
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       fit: BoxFit.fill,
                //       image: AssetImage(
                //         'assets/images/Facebook_Logo.png',
                //       ),
                //     ),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 90, right: 80),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Image.asset("assets/images/Facebook_Logo.png"),
                //         SizedBox(
                //           width: 2,
                //         ),
                //         Text(
                //           "Facebook",
                //           style: TextStyle(fontSize: 14, color: Colors.black),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
