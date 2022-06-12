import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/login_screen.dart';
import 'package:tmallak/router_helper.dart';
import 'package:tmallak/verification_screen.dart';

class PasswordRecovery extends StatefulWidget {
  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'استعادة كلمة المرور',
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
        Column(
          children: <Widget>[
            Text(
              'الرجاء إدخال بريدك الإلكتروني أو رقم الجوال حتى نتمكن من مساعدتك في استعادة كلمة المرور الخاصة بك',
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 8, left: 20, top: 40, bottom: 10),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'البريد الإلكتروني أو رقم الجوال',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            ),
            TextFormField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: ' ادخل البريد الإلكتروني أو رقم الجوال',
              ),
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 1, 112, 202)),
              width: MediaQuery.of(context).size.width,
              child: FlatButton(
                child: Text(
                  'استعادة كلمة المرور',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(VerificationScreen());
                },
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
