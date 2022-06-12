import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/home_page.dart';
import 'package:tmallak/login_screen.dart';
import 'package:tmallak/router_helper.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'إنشاء حساب',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            RouterHelper.routerHelper.routingToSpecificWidget(LoginScreen());
          },
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'الاسم الأخير',
                              style: TextStyle(
                                  // fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                        Container(
                          // padding: EdgeInsets.all(8.0),
                          width: 160,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الاسم الأول',
                          style: TextStyle(
                              // fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                          // padding: EdgeInsets.all(8.0),
                          width: 160,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      'إنشاء حساب',
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
                      text: ' تمتلك حساب؟ ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 185, 185, 185),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'قم بتسجيل الدخول',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal',
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                RouterHelper.routerHelper
                                    .routingToSpecificWidget(LoginScreen());
                              }),
                      ]),
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
